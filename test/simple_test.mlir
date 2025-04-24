#CSC = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d1: dense, d0: compressed)
}>

module {
  func.func @sparse_dense_matmul(
    %sparse : tensor<2x2xf64, #CSC>,
    %dense : tensor<2x2xf64>,
    %init : tensor<2x2xf64>
  ) -> tensor<2x2xf64> {
    %result = linalg.matmul
      ins(%sparse, %dense : tensor<2x2xf64, #CSC>, tensor<2x2xf64>)
      outs(%init : tensor<2x2xf64>) -> tensor<2x2xf64>
    return %result : tensor<2x2xf64>
  }

  func.func @compute_sum(%tensor: tensor<2x2xf64>) -> f64 {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 2 : index
    %cols = arith.constant 2 : index
    %init = arith.constant 0.0 : f64

    %sum = scf.for %i = %c0 to %rows step %c1 iter_args(%s = %init) -> (f64) {
      %row_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%rs = %s) -> (f64) {
        %val = tensor.extract %tensor[%i, %j] : tensor<2x2xf64>
        %rs1 = arith.addf %rs, %val : f64
        scf.yield %rs1 : f64
      }
      scf.yield %row_sum : f64
    }

    return %sum : f64
  }

  func.func @main() -> i32 {
    %output = tensor.empty() : tensor<2x2xf64>
    %sparse = call @assemble_sparse_tensor() : () -> tensor<2x2xf64, #CSC>
    %dense = arith.constant dense<1.0> : tensor<2x2xf64>

    %result = call @sparse_dense_matmul(%sparse, %dense, %output)
      : (tensor<2x2xf64, #CSC>, tensor<2x2xf64>, tensor<2x2xf64>) -> tensor<2x2xf64>

    %sum = call @compute_sum(%result) : (tensor<2x2xf64>) -> f64
    %scale = arith.constant 10.0 : f64
    %scaled = arith.mulf %sum, %scale : f64
    %retval = arith.fptosi %scaled : f64 to i32

    return %retval : i32
  }

  func.func private @assemble_sparse_tensor() -> tensor<2x2xf64, #CSC> {
    // Sparse matrix:
    // [1 0]
    // [0 2]
    %values = arith.constant dense<[1.0, 2.0]> : tensor<2xf64>
    %rows = arith.constant dense<[0, 1]> : tensor<2xindex>
    %col_ptrs = arith.constant dense<[0, 1, 2]> : tensor<3xindex>

    %sparse = sparse_tensor.assemble (%col_ptrs, %rows), %values
      : (tensor<3xindex>, tensor<2xindex>), tensor<2xf64> to tensor<2x2xf64, #CSC>

    return %sparse : tensor<2x2xf64, #CSC>
  }
}
