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
            [[2.148030, 3.179158, 6.721880, 7.337859, 9.545337, 3.965045, 4.755220, 0.910350, 2.829731, 3.229077], [4.279835, 0.629571, 0.100731, 0.573380, 3.834897, 8.352452, 0.376597, 4.779666, 1.377270, 9.025892], [7.799436, 7.009355, 9.566426, 7.460372, 5.341382, 7.941893, 3.361213, 2.827835, 3.898711, 8.593343], [8.813827, 4.410054, 3.052843, 1.193086, 8.792288, 3.230525, 7.574207, 6.816806, 9.517529, 7.618173], [5.540896, 1.003286, 2.243080, 9.565734, 2.606222, 1.110296, 3.877331, 2.447441, 0.107623, 1.491519], [8.844073, 3.115901, 0.698806, 5.246328, 6.939176, 8.916551, 1.127548, 1.004526, 8.102064, 5.441039], [5.202175, 5.329177, 6.041501, 3.293417, 1.155462, 5.464641, 8.387863, 6.531682, 4.265974, 8.096878], [5.823862, 7.739944, 9.885139, 3.746621, 6.914353, 3.377935, 7.741002, 7.785396, 5.999014, 2.929982], [3.861033, 8.154680, 4.405472, 1.845814, 3.436669, 6.757503, 7.107226, 6.530361, 7.957120, 9.821286], [4.239354, 6.733556, 9.136618, 2.907801, 2.428701, 0.616395, 4.168693, 6.804278, 4.846202, 7.203760]]
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
        %values = arith.constant dense<[6.752739, 2.142101, 3.938905, 2.896110, 7.487166, 7.566381, 0.674924, 9.752968, 2.538267]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 3, 5, 5, 5, 8, 8, 8, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 9, 0, 6, 0, 3, 6, 0]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
