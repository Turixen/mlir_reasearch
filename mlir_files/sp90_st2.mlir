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
            [[5.983664, 4.447843, 0.263239, 9.986874, 5.663597, 8.579001, 8.785831, 8.118863, 0.329052, 9.783738], [0.292405, 6.644719, 9.928692, 1.828350, 0.331536, 1.883685, 8.282403, 0.119180, 9.594368, 4.834643], [9.350619, 8.048208, 4.614895, 6.376211, 8.998213, 4.977224, 8.559574, 0.512549, 2.261596, 2.196848], [4.317128, 2.197252, 7.213774, 2.711951, 7.705939, 9.237583, 0.028073, 0.426256, 0.319017, 2.549561], [5.306486, 5.501231, 4.644593, 9.325331, 8.818777, 8.803333, 9.325608, 7.458914, 6.531164, 1.715892], [1.601179, 3.043063, 2.381861, 0.065477, 4.909796, 0.894658, 7.053304, 9.641960, 4.233184, 6.017139], [7.394852, 9.016494, 1.953174, 9.097975, 9.006520, 8.924006, 4.883401, 2.040693, 2.239882, 2.829772], [0.336889, 0.491236, 6.589366, 9.820390, 3.072483, 5.097330, 4.961452, 7.617506, 0.920624, 6.637973], [9.560182, 3.031858, 4.201287, 2.885022, 7.852850, 0.751922, 0.204108, 2.047935, 4.499434, 6.907815], [0.777378, 3.818000, 6.410320, 7.615855, 7.878191, 0.110439, 8.116939, 1.456766, 4.434149, 1.029367]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[7.377277, 5.416814, 9.333711, 2.671215, 8.540726, 8.016043, 5.344097, 4.014251, 7.245937]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 4, 4, 6, 6, 7, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 6, 0, 8, 2, 6, 6, 0, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
