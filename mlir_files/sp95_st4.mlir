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
            [[8.966218, 8.337268, 7.150032, 8.885025, 6.586071, 2.747472, 3.027997, 6.690894, 7.347197, 4.270982], [2.632383, 9.076556, 0.694476, 5.529992, 3.180370, 6.419179, 2.531426, 3.469169, 2.948805, 1.297963], [8.535860, 9.892789, 0.365788, 0.679856, 0.977834, 8.702393, 3.615744, 0.673237, 0.000654, 4.349359], [5.243396, 1.405302, 3.498800, 1.564899, 1.582198, 6.264286, 8.647764, 2.426590, 2.167347, 0.211208], [1.963697, 3.793703, 3.869664, 8.345384, 5.174109, 6.238921, 0.690069, 0.165238, 2.856897, 0.667201], [3.037905, 1.789547, 1.462871, 8.929985, 2.547048, 4.625737, 2.142341, 3.754153, 9.435650, 3.511533], [7.140699, 4.839334, 6.220073, 9.116733, 1.337713, 8.529328, 8.402942, 7.815211, 6.919571, 2.364800], [2.582267, 1.476506, 7.339064, 3.606334, 4.658531, 5.593170, 7.274985, 4.937874, 1.728525, 2.255350], [7.741347, 5.168552, 4.736657, 0.101095, 0.729833, 2.231414, 6.365906, 1.859432, 4.870594, 7.728176], [4.346897, 0.793353, 4.394751, 4.561685, 2.074423, 8.069202, 6.583093, 8.240549, 4.455052, 3.541920]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[4.160243, 8.860025, 9.487967, 2.831025, 7.860346]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 1, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 4, 8, 0, 4]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
