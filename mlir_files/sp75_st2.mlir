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
    func.func private @printf(!string.constant, f64) -> i32  // Declare
    
    func.func @main() -> i64 {
        %c = tensor.empty() : tensor<10x10xf64>
        %t_sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %s = arith.constant dense<[
            [[3.519772, 7.510647, 9.769056, 8.585341, 9.563959, 4.241597, 5.337813, 3.966687, 3.743989, 9.484162], [4.798733, 2.063522, 4.568746, 0.168727, 2.827406, 4.666516, 3.851972, 3.061550, 5.453579, 4.347491], [0.243268, 6.214261, 7.411168, 3.788637, 3.316446, 4.772868, 0.733122, 6.959372, 8.038743, 5.364956], [1.766420, 8.517575, 6.409488, 6.400962, 6.720591, 8.666487, 7.054553, 3.741359, 7.586753, 4.116062], [9.525774, 4.972902, 2.159131, 8.342566, 1.160974, 5.475432, 6.113893, 3.428020, 8.705181, 8.395739], [0.674777, 9.563248, 7.062383, 7.374222, 0.447612, 7.087209, 8.774129, 3.167863, 3.068757, 3.400981], [1.314751, 1.906988, 8.518269, 8.009480, 0.868994, 5.851057, 3.236031, 0.164064, 5.563027, 5.489966], [6.437532, 7.420233, 5.372998, 4.877387, 3.415156, 6.410646, 0.840618, 5.204533, 4.506145, 4.292732], [1.311237, 0.506590, 2.675441, 9.494235, 8.142786, 5.023723, 9.429872, 4.023161, 9.430023, 1.157409], [3.054298, 4.985403, 5.959013, 2.605866, 4.698802, 1.604755, 5.496550, 4.759936, 0.971356, 5.671937]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index
        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        // Debug: Print the value
        %fmt = arith.constant "Value at [1,1]: %f
" : !string.constant
        call @printf(%fmt, %element_f64) : (!string.constant, f64) -> ()
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[6.304914, 3.679627, 3.017458, 2.598731, 6.310988, 0.957681, 9.186011, 5.665149, 6.825777, 6.142266, 1.687263, 6.030229, 2.514004, 8.987222, 6.582297, 6.808683, 7.689212, 1.439997, 2.153630, 9.332431, 0.240943, 3.261450, 8.064181, 4.376618, 8.092593]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
