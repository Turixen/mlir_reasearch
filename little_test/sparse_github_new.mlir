#CSR = #sparse_tensor.encoding<{ 
   map = (d0, d1) -> (d0: compressed, d1: compressed) 
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

func.func @matmul_masked(%t : tensor<10x10xf64, #CSR>, %s : tensor<10x10xf64>, %out : tensor<10x10xf64>)
    -> tensor<10x10xf64> {
    %0 = linalg.matmul
        ins(%t, %s: tensor<10x10xf64, #CSR>, tensor<10x10xf64>)
        outs(%out: tensor<10x10xf64>) -> tensor<10x10xf64>
    return %0 : tensor<10x10xf64>
}

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