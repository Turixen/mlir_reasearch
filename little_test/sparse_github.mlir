
// mlir-opt sparse_github.mlir --sparse-reinterpret-map -sparsification -cse -sparse-vectorization="vl=16 enable-simd-index32=true" -cse

#CSR = #sparse_tensor.encoding<{ 
   map = (d0, d1) -> (d0: dense, d1: compressed) 
}>

#trait_mul_ds = {
  indexing_maps = [
    affine_map<(i,j) -> (i,j)>,  // A
    affine_map<(i,j) -> (i,j)>,  // B
    affine_map<(i,j) -> (i,j)>   // C (out)
  ],
  iterator_types = ["parallel", "parallel"],
  doc = "C(i,j) = A(i,j) * B(i,j)"
}

#trait_matmul = {
  indexing_maps = [
    affine_map<(i,j,k) -> (i,j)>,  // A(i,j)
    affine_map<(i,j,k) -> (j,k)>,  // B(j,k)
    affine_map<(i,j,k) -> (i,k)>   // C(i,k)
  ],
  iterator_types = ["parallel", "reduction", "parallel"],
  doc = "C(i,k) += A(i,j) * B(j,k)"
}
//===----------------------------------------------------------------------===//

func.func @matmul(%t : tensor<10x10xf64, #CSR>, %s : tensor<10x10xf64>, %out : tensor<10x10xf64>)
    -> tensor<10x10xf64> {
    %0 = linalg.matmul
        ins(%t, %s: tensor<10x10xf64, #CSR>, tensor<10x10xf64>)
        outs(%out: tensor<10x10xf64>) -> tensor<10x10xf64>
    return %0 : tensor<10x10xf64>
}
//===----------------------------------------------------------------------===//

func.func @matmul_generic(%A: tensor<10x20xf64, #CSR>,
                          %B: tensor<20x30xf64>,
                          %X: tensor<10x30xf64>)
      -> tensor<10x30xf64> {
  %0 = linalg.generic #trait_matmul
    ins(%A, %B: tensor<10x20xf64, #CSR>, tensor<20x30xf64>)
    outs(%X: tensor<10x30xf64>) {
      ^bb(%a: f64, %b: f64, %x: f64):
        %mul = arith.mulf %a, %b : f64
        %add = arith.addf %x, %mul : f64
        linalg.yield %add : f64
    } -> tensor<10x30xf64>
  return %0 : tensor<10x30xf64>
}
//===----------------------------------------------------------------------===//

func.func @mul_ds(%arga: tensor<512x1024xf32, #CSR>,
                  %argb: tensor<512x1024xf32>,
		  %argx: tensor<512x1024xf32>) -> tensor<512x1024xf32> {
  %0 = linalg.generic #trait_mul_ds
    ins(%arga, %argb: tensor<512x1024xf32, #CSR>, tensor<512x1024xf32>)
    outs(%argx: tensor<512x1024xf32>) {
      ^bb(%a: f32, %b: f32, %x: f32):
        %0 = arith.mulf %a, %b : f32
        linalg.yield %0 : f32
  } -> tensor<512x1024xf32>
  return %0 : tensor<512x1024xf32>
}
