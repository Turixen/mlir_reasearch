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
            [[1.022804, 9.514037, 8.609505, 0.832703, 6.071684, 9.311815, 1.035414, 6.924801, 4.519396, 2.404286], [7.092198, 5.296332, 5.573841, 0.307734, 0.310655, 0.826131, 7.185733, 6.772679, 4.701231, 7.297082], [1.366472, 3.817494, 4.752254, 1.763027, 0.414652, 9.884714, 5.856011, 0.922903, 8.340050, 4.402569], [0.525772, 0.102993, 3.387288, 0.639264, 9.291563, 6.887157, 8.720210, 8.997235, 1.875253, 8.325595], [6.492729, 4.776993, 3.129131, 5.279077, 6.596132, 1.298442, 0.406800, 2.474759, 2.814527, 8.070116], [9.655763, 0.712332, 3.354678, 2.514218, 3.428425, 9.995647, 4.641898, 6.879553, 7.264007, 2.929144], [6.473476, 1.785411, 5.038290, 3.994010, 3.016168, 6.815481, 3.760554, 3.404066, 9.653040, 6.172628], [1.115507, 9.188120, 7.123670, 5.634490, 2.370030, 9.998451, 3.915748, 6.988819, 9.232552, 4.537550], [6.546342, 9.676579, 3.406590, 6.193755, 8.467356, 6.529588, 7.592088, 0.407081, 2.691072, 4.965346], [5.707796, 0.448961, 3.624665, 1.277353, 9.332990, 5.485641, 4.073872, 3.810191, 2.630067, 9.076414]]
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
        %values = arith.constant dense<[2.699156, 9.042124, 6.918496, 6.586104, 7.478321, 7.305442, 7.975181, 0.724270, 3.993091, 0.556125, 6.820690, 8.424972, 2.088868, 5.861411, 1.573259, 5.303400, 3.261242, 0.675664, 3.290269, 3.367088, 2.395605, 0.293482, 6.289217, 9.939236, 5.935852, 1.060890, 6.960341, 9.744527, 8.672186, 4.522232, 4.731333, 6.534859, 3.933027, 1.707513, 0.440320]> : tensor<35xf64>
        %row_ptr = arith.constant dense<[0, 4, 7, 9, 14, 18, 19, 25, 28, 31, 35]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 5, 8, 9, 5, 7, 0, 3, 4, 6, 9, 0, 2, 4, 5, 8, 0, 1, 3, 4, 6, 9, 1, 3, 6, 0, 2, 9, 0, 3, 6, 9]> : tensor<35xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<35xindex>), tensor<35xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
