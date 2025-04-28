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
            [[2.641303, 7.192188, 5.747076, 3.980246, 0.580405, 4.023643, 4.655521, 8.481574, 2.231215, 2.162276], [3.102567, 0.642450, 7.844604, 2.867517, 6.330314, 7.847443, 7.575923, 9.393052, 3.825643, 3.156843], [8.136232, 7.323737, 8.279182, 2.382399, 5.631945, 8.456133, 4.596603, 6.923500, 0.886225, 0.985860], [9.211942, 5.790554, 7.292883, 0.605871, 5.653785, 9.228567, 9.460694, 1.653810, 3.985012, 8.757116], [4.565733, 8.723609, 3.871558, 8.743070, 7.615825, 5.990618, 7.063060, 7.602363, 2.516837, 4.142890], [0.083083, 5.893912, 1.204554, 3.044663, 7.174411, 9.137341, 1.388948, 7.878538, 4.395935, 9.423248], [3.050691, 6.056594, 1.089790, 1.569092, 2.146684, 9.484898, 2.838836, 8.935921, 4.722643, 2.382299], [2.743714, 1.177706, 8.938184, 7.592608, 2.615298, 3.216385, 3.370796, 7.270491, 6.582209, 5.342212], [8.206190, 0.007778, 8.046198, 3.883243, 4.359340, 3.757789, 4.747028, 9.717578, 4.440101, 9.877659], [8.798324, 9.609672, 4.873386, 1.985779, 3.786957, 8.862427, 8.517154, 7.878666, 4.492959, 3.321634]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[9.048387, 3.173783, 7.458229, 6.406710, 6.342194, 1.687394, 3.778688, 9.587768, 9.878447, 0.033302, 7.564078, 9.936180, 6.522941, 8.783147, 0.054508, 9.228471, 3.512257, 3.410295, 4.838329, 0.361572, 7.826163, 9.091282, 6.005838, 9.477856, 3.182594, 1.205238, 3.164549, 6.700996, 1.190661, 0.291077]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 11, 16, 17, 22, 23, 30, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 5, 0, 2, 4, 6, 8, 6, 0, 2, 4, 6, 8, 0, 0, 2, 3, 4, 6, 7, 8]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
