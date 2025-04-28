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
            [[7.754496, 4.892564, 1.456170, 9.655528, 1.348296, 7.544901, 5.392581, 1.096818, 7.890435, 4.438312], [8.893718, 1.665586, 1.809416, 1.950416, 3.173828, 1.822433, 3.540329, 4.275907, 5.274832, 8.103366], [6.505716, 9.381303, 7.344396, 8.467825, 6.212194, 9.194809, 6.590853, 6.247813, 5.063378, 1.249028], [1.061311, 8.311967, 1.483437, 4.699260, 5.156443, 7.041149, 2.004435, 1.053876, 1.597876, 9.811675], [4.380180, 4.625838, 3.592035, 5.800405, 3.655180, 4.408564, 6.297094, 5.968092, 8.419497, 3.829928], [9.068110, 6.235491, 7.450124, 0.103822, 7.645690, 3.047460, 7.907092, 2.458352, 2.781795, 6.707227], [2.040488, 0.531553, 2.232648, 6.184345, 2.034862, 5.683096, 7.572067, 5.462548, 9.490909, 6.423100], [6.222598, 9.283980, 2.950745, 0.315786, 9.448541, 4.476083, 6.327250, 8.839524, 6.966591, 5.028095], [8.887583, 8.130908, 6.394304, 3.959124, 9.787899, 2.269553, 2.090849, 2.491275, 0.919579, 0.710995], [0.839758, 7.951025, 2.151200, 1.406900, 3.848085, 0.114646, 3.869704, 7.840964, 0.062702, 4.129427]]
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
        %values = arith.constant dense<[6.569494, 1.939810, 0.941754, 1.779427, 9.040490, 7.381260, 6.833227, 4.991318, 5.637952, 4.309377, 0.255836, 7.118404, 2.400001, 1.910186, 7.123837, 8.659214, 2.443951, 2.101301, 0.607134, 6.058092, 4.645129, 1.010608, 3.219870, 1.868338, 4.160002, 9.911715, 6.298313, 0.346043, 5.372886, 1.150083, 4.329848, 8.936146, 4.552289, 6.856911, 2.703938, 4.593899, 9.896364, 9.278918, 6.189075, 8.961217, 0.790680, 0.714617, 6.087886, 4.887277, 7.401047]> : tensor<45xf64>
        %row_ptr = arith.constant dense<[0, 6, 7, 13, 15, 21, 25, 30, 33, 40, 45]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 2, 4, 6, 8, 4, 0, 2, 4, 6, 8, 9, 1, 9, 0, 1, 2, 4, 6, 8, 2, 3, 4, 8, 0, 2, 4, 6, 8, 1, 8, 9, 0, 2, 4, 5, 6, 7, 8, 0, 2, 4, 7, 9]> : tensor<45xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<45xindex>), tensor<45xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
