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
            [[7.998430, 9.643265, 6.080613, 2.269703, 1.438965, 9.082117, 0.236492, 5.031039, 8.278668, 8.475607], [2.894822, 7.180714, 6.526644, 9.630456, 6.230522, 2.001213, 8.937800, 5.927848, 6.294621, 7.962862], [7.067187, 4.266450, 2.262135, 9.903670, 1.028731, 5.022957, 0.517998, 9.944979, 6.131838, 1.538387], [9.285893, 2.259507, 1.867225, 5.474889, 5.293991, 2.157617, 9.989916, 8.014542, 6.273745, 8.614925], [7.460593, 1.973560, 7.928645, 1.963872, 7.837351, 2.002534, 5.295995, 0.655679, 6.728169, 4.293492], [2.243631, 4.012160, 4.864278, 6.767613, 0.678334, 7.203120, 9.572571, 9.160425, 9.361586, 1.115358], [5.340297, 5.492741, 2.865203, 8.908000, 7.963300, 2.363718, 4.256656, 1.635369, 7.766825, 0.218623], [6.300500, 4.102409, 9.758554, 1.249059, 8.138648, 8.279554, 0.202922, 9.267845, 7.323624, 6.577421], [3.779840, 2.247316, 0.732451, 3.915693, 0.984951, 4.343736, 3.787451, 1.737273, 0.070015, 2.537546], [0.667950, 6.109872, 7.103362, 9.398903, 2.805328, 9.684526, 6.016860, 8.504724, 2.071108, 5.498441]]
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
        %values = arith.constant dense<[5.797031, 1.791523, 9.221935, 2.588755, 6.152973, 6.099824, 6.877981, 2.779233, 5.866868, 1.496542, 2.670829, 0.548487, 7.086741, 3.384390, 9.963735, 4.138314, 5.999532, 4.285200, 4.572056, 4.244517, 3.994913, 9.767151, 8.014084, 6.127094, 5.528066, 3.164047, 8.366877, 3.274357, 9.111149, 3.754126, 0.026857, 3.156616, 0.641128, 0.032846, 9.810914, 3.460899, 5.583681, 6.727478, 3.482363, 6.949696, 4.181591, 2.367712, 4.143427, 4.706113, 3.148996]> : tensor<45xf64>
        %row_ptr = arith.constant dense<[0, 5, 9, 13, 19, 24, 28, 33, 38, 42, 45]> : tensor<11xindex>
        %col_ind = arith.constant dense<[1, 3, 5, 6, 9, 0, 3, 7, 8, 2, 5, 7, 8, 3, 4, 5, 6, 7, 9, 1, 2, 3, 4, 7, 2, 4, 7, 8, 0, 1, 4, 6, 9, 0, 3, 4, 7, 8, 0, 2, 3, 4, 0, 3, 5]> : tensor<45xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<45xindex>), tensor<45xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
