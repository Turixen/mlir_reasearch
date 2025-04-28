// Sparse-Dense Matrix Multiplication using CSR
#CSR = #sparse_tensor.encoding<{ 
   map = (d0, d1) -> (d0: compressed, d1: dense) 
}>

module {
    func.func @matmul(%t : tensor<10x10xf64, #CSR>, %s : tensor<10x10xf64>, %out : tensor<10x10xf64>)
        -> tensor<10x10xf64> {
        %0 = linalg.matmul
            ins(%t, %s: tensor<10x10xf64, #CSR>, tensor<10x10xf64>)
            outs(%out: tensor<10x10xf64>) -> tensor<10x10xf64>
        return %0 : tensor<10x10xf64>
    }

    func.func @main() -> i64 {
        %c = tensor.empty() : tensor<10x10xf64>
        %t_sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %s = arith.constant dense<[
            [[1.864228, 0.582467, 6.301437, 3.445380, 1.408162, 0.123539, 3.448233, 2.827905, 4.596100, 0.775571], [0.664514, 2.421320, 9.989489, 5.842466, 8.357852, 1.618575, 9.859129, 8.172379, 5.713387, 6.933872], [5.881345, 6.340433, 2.239698, 7.950193, 0.218077, 7.281252, 2.372825, 2.944098, 3.449496, 8.570708], [8.828986, 6.866842, 7.996696, 1.863917, 5.579459, 8.070490, 1.431565, 8.284724, 6.889279, 2.605484], [0.943656, 3.937400, 5.060220, 9.164323, 0.275438, 7.730305, 6.973376, 1.935266, 7.758432, 2.046388], [6.191472, 1.481516, 0.982192, 3.725176, 2.460021, 6.515599, 5.701331, 8.151073, 9.320925, 9.801209], [5.937274, 1.201762, 6.758549, 5.212802, 2.111396, 7.242203, 2.183796, 5.968236, 7.857016, 5.352990], [6.277845, 7.313023, 8.315272, 0.220546, 6.121515, 8.025180, 3.611773, 0.641970, 8.986152, 0.213603], [3.625608, 9.672362, 0.942409, 5.356111, 7.130474, 5.261052, 6.754621, 7.184203, 6.742172, 0.210813], [8.305526, 9.051006, 0.741144, 7.597252, 1.621603, 4.351207, 4.200127, 6.660750, 0.013597, 2.369334]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[5.232436, 8.872697, 3.448013, 4.951338, 2.823010, 8.050765, 7.832990, 8.822274, 9.504759, 9.371944, 7.725183, 1.269239, 8.599128, 0.218605, 8.130021, 9.936840, 7.024292, 0.965410, 8.107415]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 9, 9, 12, 12, 15, 15, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 6, 8, 0, 4, 8, 0, 4, 6, 0, 2, 4, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
