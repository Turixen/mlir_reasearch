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
            [[3.061070, 6.391698, 7.498215, 6.922763, 7.602466, 5.353003, 8.124783, 4.246862, 2.780676, 7.987801], [9.940795, 8.025142, 5.698468, 8.772655, 2.778403, 1.640636, 3.155319, 6.925295, 5.242049, 7.918167], [4.190076, 0.839325, 6.667947, 4.377074, 8.663367, 4.532792, 8.895903, 7.908427, 1.328920, 9.324709], [1.124384, 1.669617, 5.550575, 8.171124, 6.479371, 7.431190, 0.449407, 4.193851, 3.444125, 0.113583], [1.512809, 5.541207, 3.459884, 4.179477, 7.991581, 3.374348, 5.048707, 3.715762, 7.711112, 7.655363], [6.510358, 2.803641, 3.088332, 4.083011, 9.565057, 3.771247, 7.917110, 6.446010, 2.752567, 1.304535], [4.513095, 1.647051, 4.072756, 3.067026, 8.947900, 9.317061, 6.016346, 0.913665, 2.466502, 6.735088], [3.256794, 0.445822, 7.880334, 0.719277, 3.074210, 6.889163, 2.865144, 8.702882, 7.723392, 3.622611], [0.090569, 7.112049, 4.723498, 7.758774, 1.027385, 3.379812, 8.376670, 5.386461, 8.954483, 2.330433], [9.463166, 8.217230, 2.816618, 3.617547, 3.588161, 8.909126, 5.275166, 2.205277, 0.176646, 9.657260]]
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
        %values = arith.constant dense<[4.452087, 6.897382, 5.736554, 3.347375, 2.711241]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 3, 3, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 8, 0, 2, 6]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
