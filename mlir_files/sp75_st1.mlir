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
            [[4.109027, 0.295709, 3.710297, 1.558839, 2.449099, 9.253516, 1.345663, 5.239860, 0.092386, 5.979619], [1.578427, 2.028559, 8.497654, 3.810546, 2.456633, 7.801400, 8.276152, 2.821658, 8.402188, 4.431264], [1.127972, 3.115865, 3.884856, 2.419126, 7.486949, 1.460242, 6.762934, 3.532515, 0.821628, 0.934225], [0.474272, 3.746261, 1.586342, 9.485845, 6.228658, 6.125720, 7.745670, 0.729218, 3.430694, 3.546983], [1.228584, 4.974444, 5.891094, 8.175212, 1.454654, 0.773501, 1.182316, 8.710366, 0.057898, 5.721438], [5.464576, 4.681860, 2.528812, 0.666431, 8.483345, 4.624586, 2.540429, 7.453801, 1.842113, 0.740865], [8.275537, 8.337911, 3.833146, 9.325562, 3.085687, 7.645864, 7.041323, 0.262351, 6.585627, 3.290426], [4.820296, 9.675234, 4.354134, 6.567492, 8.034264, 8.045063, 3.228574, 5.406181, 4.204535, 8.932958], [3.911451, 6.521485, 1.257354, 2.638790, 7.110260, 4.629285, 3.366888, 4.839129, 2.097911, 9.734865], [8.348445, 8.890099, 9.832435, 4.886405, 5.443153, 0.468971, 3.071012, 5.157697, 1.204004, 6.195776]]
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
        %values = arith.constant dense<[6.179566, 2.637718, 9.420010, 5.602470, 9.876484, 6.141400, 9.799374, 7.154272, 6.120887, 9.122612, 4.321255, 7.315599, 4.624344, 9.499571, 5.969417, 7.689984, 9.109239, 2.039197, 3.582219, 8.584668, 9.610361, 1.295803, 6.127446, 2.964953, 2.664391]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 2, 5, 10, 13, 15, 16, 19, 22, 22, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 7, 1, 2, 6, 0, 2, 4, 6, 7, 4, 8, 9, 5, 8, 1, 0, 3, 8, 0, 6, 8, 1, 7, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
