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
            [[1.718067, 9.731576, 4.543364, 2.402889, 3.716881, 1.774499, 3.163817, 6.447727, 2.788960, 1.119585], [0.684188, 1.455069, 4.166424, 4.149181, 3.723753, 7.628800, 1.280686, 8.380842, 3.037133, 8.024444], [2.815938, 7.995316, 4.572337, 2.750353, 4.885272, 9.231094, 7.138126, 0.180599, 4.655739, 6.133280], [8.417185, 7.347290, 7.680307, 0.930162, 6.599078, 2.750750, 9.132890, 7.281252, 2.737637, 2.008538], [6.460521, 0.095299, 7.736641, 7.026295, 2.295540, 4.447290, 7.156922, 9.887150, 4.387669, 5.653054], [0.632568, 6.870632, 2.887716, 3.002056, 4.872867, 7.170733, 7.068454, 6.434133, 0.291379, 8.305950], [4.046389, 6.515940, 6.543717, 2.379205, 2.198226, 6.539569, 0.112126, 7.936010, 2.257626, 7.867777], [1.405248, 2.000567, 8.488859, 4.339381, 5.094577, 2.438198, 0.167432, 3.947296, 7.926932, 7.750743], [8.361723, 5.743245, 5.920908, 7.591929, 3.582122, 9.672409, 8.343820, 5.543432, 3.124093, 6.069514], [6.696447, 5.868858, 7.309553, 6.761067, 6.713352, 1.208311, 1.964044, 6.907920, 8.517548, 0.997603]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[2.479970, 9.308131, 7.644208, 1.126567, 3.771186, 2.348397, 4.368374, 1.091349, 6.246786, 4.914924, 2.404961, 3.645853, 1.762697, 1.051072, 9.567750, 9.500856, 9.910579, 6.862195, 5.322151, 7.278566, 1.868305, 4.146392, 5.900038, 2.430881, 6.134851, 8.399939, 7.846688, 5.756132, 7.050243, 9.097092]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 5, 8, 11, 14, 14, 19, 21, 24, 27, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 5, 9, 0, 4, 5, 0, 5, 6, 0, 1, 9, 1, 2, 3, 5, 8, 2, 5, 2, 6, 8, 6, 8, 9, 0, 6, 9]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
