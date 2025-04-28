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
            [[5.387405, 1.122529, 1.014067, 6.892885, 2.253102, 4.730189, 0.733710, 1.203884, 2.886715, 5.446201], [4.772720, 7.636571, 5.938209, 9.956328, 3.001636, 8.844875, 1.294801, 7.091774, 4.041905, 3.355658], [6.595323, 5.711582, 9.885999, 4.148370, 0.568185, 1.520500, 3.577247, 6.111182, 7.337795, 8.886650], [8.400215, 4.740889, 5.034593, 3.508580, 2.715616, 2.268009, 0.164874, 7.566076, 3.238572, 0.435675], [9.102316, 9.600737, 9.914007, 3.030713, 0.929562, 1.612049, 2.424894, 8.225838, 4.891826, 3.148983], [6.441756, 2.343743, 9.251979, 6.221746, 7.897682, 4.246581, 4.756408, 5.544600, 8.486066, 1.593127], [8.925124, 0.814061, 3.981768, 2.554322, 4.544541, 8.460797, 9.538662, 4.025771, 7.137633, 4.597951], [3.499003, 0.708018, 3.290556, 1.345876, 3.833495, 1.522713, 9.963386, 3.789862, 1.950872, 8.429030], [7.502667, 5.901225, 9.444966, 9.232136, 4.315284, 0.009183, 4.131305, 1.242119, 2.565638, 0.042157], [8.148646, 3.050817, 9.950499, 6.229501, 4.160174, 3.781367, 5.210608, 2.411570, 5.893489, 3.858467]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[8.825409, 5.062831, 1.472037, 4.488775, 7.876654, 5.485023, 0.886248, 8.765985, 1.080103, 1.977373, 9.548386, 1.967059, 3.790644, 1.428265, 3.597201, 7.406494, 4.259965, 0.058231, 0.239562, 3.502307, 7.770084, 3.674808, 9.249118, 9.368774, 3.895611, 9.582887, 3.446421, 4.352239, 3.772857, 8.137205]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 5, 7, 10, 15, 17, 18, 23, 25, 26, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 7, 9, 7, 8, 2, 3, 7, 0, 1, 3, 6, 9, 3, 7, 8, 0, 3, 5, 6, 9, 6, 7, 7, 0, 3, 6, 9]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
