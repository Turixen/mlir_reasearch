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
            [[5.969808, 3.990164, 3.537334, 2.350113, 3.460817, 4.253867, 1.561355, 5.609168, 7.743996, 6.892809], [2.102318, 8.089814, 8.272272, 3.395478, 4.089874, 4.934054, 3.886510, 3.941697, 0.648251, 5.583897], [8.117619, 0.420020, 0.562090, 3.134160, 5.733373, 6.790613, 0.196080, 2.404438, 7.961763, 4.879246], [8.519531, 1.227269, 7.665173, 7.286819, 8.429749, 8.220521, 7.398913, 2.139823, 9.609921, 1.494275], [3.474613, 3.789182, 4.047208, 6.536274, 1.888840, 9.267737, 4.271095, 6.740518, 3.456742, 8.482099], [8.097157, 8.591317, 6.886670, 2.200628, 5.755404, 7.310849, 0.766205, 6.576593, 9.345001, 4.422489], [3.388618, 7.570694, 6.278977, 7.607448, 8.184410, 4.713297, 6.969321, 7.588848, 9.661875, 4.065663], [0.136497, 6.865891, 9.345569, 4.263807, 2.639646, 1.577565, 2.567469, 3.679896, 4.481532, 2.143638], [1.175604, 2.017343, 3.176135, 3.483055, 6.404440, 0.741758, 8.058892, 4.205000, 7.195752, 3.919648], [9.036822, 1.204933, 8.975061, 0.897554, 8.267692, 7.078702, 6.651116, 4.838841, 8.691245, 0.679776]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[3.579385, 2.856188, 6.747404, 7.652628, 3.424314, 5.505809, 6.770172, 0.790835, 2.832985]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 2, 2, 2, 5, 5, 8, 8, 8, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[1, 4, 0, 7, 9, 2, 5, 8, 1]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
