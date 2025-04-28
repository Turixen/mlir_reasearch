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
            [[1.441491, 8.041313, 8.400205, 5.645402, 9.184968, 5.240189, 6.936985, 0.229189, 9.657795, 6.404459], [2.417541, 1.808131, 9.498094, 3.196500, 5.778890, 0.085572, 9.281633, 1.788608, 8.618176, 5.027622], [5.066702, 1.268151, 0.666680, 8.211185, 2.221612, 3.059873, 8.458176, 5.378969, 9.344540, 7.459622], [3.027233, 4.194187, 1.858690, 4.582619, 5.261579, 3.450472, 0.645990, 9.592803, 0.000775, 6.458210], [0.069175, 0.913209, 3.647177, 2.359471, 3.850062, 5.707456, 7.425091, 9.404415, 5.686009, 4.871423], [2.410195, 7.691543, 8.453277, 3.287096, 9.228690, 1.320885, 9.563572, 1.601319, 7.957171, 8.812880], [2.639444, 2.935331, 5.012611, 6.645178, 6.120979, 4.534971, 5.613966, 3.988639, 4.056280, 2.311003], [2.410776, 0.087059, 3.723251, 0.375126, 1.166987, 4.025502, 4.708242, 0.758382, 3.461964, 8.250645], [3.448735, 7.230502, 0.380838, 9.290879, 0.640073, 2.135287, 8.528290, 9.833030, 4.603894, 8.400178], [8.081651, 2.010492, 9.027333, 6.754565, 7.350084, 6.914987, 1.349267, 3.562327, 2.301917, 2.549955]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[2.222086, 4.157189, 6.123439, 1.880888, 7.514799, 1.036418, 8.421779, 4.739919, 8.589593, 8.207097, 7.650045, 3.401834, 4.310028, 0.135100, 7.644639]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 2, 3, 5, 8, 8, 9, 10, 12, 13, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 7, 5, 8, 4, 6, 8, 8, 2, 2, 3, 4, 0, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
