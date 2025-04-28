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
            [[9.992002, 9.188836, 5.169294, 8.243459, 9.052000, 0.802580, 4.000121, 3.071443, 0.682947, 7.776546], [5.263887, 0.543016, 5.729295, 6.537822, 5.806473, 4.507242, 3.309319, 5.201968, 7.647658, 6.530617], [4.822570, 3.063165, 8.941060, 3.620062, 0.409799, 1.744483, 0.171605, 1.064544, 1.013728, 6.713323], [5.660330, 8.060032, 0.085237, 5.687600, 1.667060, 7.791187, 3.819226, 5.534511, 6.109813, 9.670097], [9.423713, 0.325153, 5.487791, 6.548519, 0.799822, 8.821132, 6.341659, 7.481511, 6.371410, 9.652728], [2.840979, 2.693903, 8.367341, 1.240171, 4.232981, 6.734196, 2.776833, 5.113079, 3.194341, 9.228407], [1.063312, 4.116404, 5.537369, 5.617244, 1.142670, 1.913532, 5.360345, 6.497089, 1.547398, 9.068077], [1.642033, 1.787259, 6.847317, 4.922633, 6.683729, 2.378460, 5.715189, 3.792469, 2.834847, 8.449535], [6.932085, 5.301049, 8.264130, 6.260882, 3.525176, 6.611366, 6.273240, 9.147208, 6.719093, 6.389008], [1.676159, 7.950098, 9.647364, 0.653858, 1.037446, 8.533675, 8.926840, 0.496880, 4.620451, 5.777886]]
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
        %values = arith.constant dense<[9.477874, 5.393291, 2.432263, 1.436813, 2.262657, 2.889185, 0.714279, 3.753141, 1.622333, 7.009151, 3.292832, 4.505472, 4.533557, 7.295478, 3.436353, 7.943030, 0.975160, 7.441066, 6.156940, 0.155221, 2.510889, 0.021833, 7.991047, 9.916745, 8.572371, 5.949753, 1.374948, 3.640378, 1.979393, 7.249451, 6.347523, 2.784020, 8.495105, 8.452203, 5.215493, 9.816529, 7.389600, 0.695838, 2.784465, 8.152098]> : tensor<40xf64>
        %row_ptr = arith.constant dense<[0, 2, 5, 10, 13, 18, 26, 29, 33, 35, 40]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 7, 9, 1, 3, 5, 7, 9, 0, 2, 9, 0, 4, 5, 7, 8, 0, 1, 2, 3, 4, 5, 7, 9, 0, 5, 6, 0, 2, 4, 6, 4, 8, 0, 1, 5, 7, 8]> : tensor<40xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<40xindex>), tensor<40xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
