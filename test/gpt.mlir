#CSR = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d0: dense, d1: compressed)
}>

module {
  func.func @sparse_dense_matmul(
    %sparse : tensor<4x4xf64, #CSR>,
    %dense : tensor<4x3xf64>,
    %init : tensor<4x3xf64>
  ) -> tensor<4x3xf64> {
    %result = linalg.matmul
      ins(%sparse, %dense: tensor<4x4xf64, #CSR>, tensor<4x3xf64>)
      outs(%init: tensor<4x3xf64>) -> tensor<4x3xf64>
    return %result : tensor<4x3xf64>
  }

  func.func @compute_sum(%tensor: tensor<4x3xf64>) -> f64 {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 4 : index
    %cols = arith.constant 3 : index
    %init = arith.constant 0.0 : f64

    %sum = scf.for %i = %c0 to %rows step %c1 iter_args(%sum_iter = %init) -> (f64) {
      %inner_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%inner_sum_iter = %sum_iter) -> (f64) {
        %elem = tensor.extract %tensor[%i, %j] : tensor<4x3xf64>
        %new_sum = arith.addf %inner_sum_iter, %elem : f64
        scf.yield %new_sum : f64
      }
      scf.yield %inner_sum : f64
    }

    return %sum : f64
  }

  func.func @main() -> i32 {
    %output = tensor.empty() : tensor<4x3xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<4x4xf64, #CSR>
    %dense_tensor = arith.constant dense<1.000000> : tensor<4x3xf64>
    %result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
      (tensor<4x4xf64, #CSR>, tensor<4x3xf64>, tensor<4x3xf64>) -> tensor<4x3xf64>
    %sum = call @compute_sum(%result) : (tensor<4x3xf64>) -> f64

    %scale = arith.constant 10.0 : f64
    %scaled = arith.mulf %sum, %scale : f64
    %return_val = arith.fptosi %scaled : f64 to i32
    return %return_val : i32
  }

  func.func private @assemble_sparse_tensor() -> tensor<4x4xf64, #CSR> {
    // Matrix:
    // [1 0 2 0]
    // [0 3 0 0]
    // [0 0 4 0]
    // [5 0 0 6]
    //
    // CSR encoding:
    //   row_ptrs:    [0, 2, 3, 4, 6]
    //   col_indices: [0, 2, 1, 2, 0, 3]
    //   values:      [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]

    %values = arith.constant dense<[1.0, 2.0, 3.0, 4.0, 5.0, 6.0]> : tensor<6xf64>
    %col_indices = arith.constant dense<[0, 2, 1, 2, 0, 3]> : tensor<6xindex>
    %row_ptrs = arith.constant dense<[0, 2, 3, 4, 6]> : tensor<5xindex>

    %sparse_tensor = sparse_tensor.assemble (%row_ptrs, %col_indices), %values
      : (tensor<5xindex>, tensor<6xindex>), tensor<6xf64> to tensor<4x4xf64, #CSR>

    return %sparse_tensor : tensor<4x4xf64, #CSR>
  }
}
