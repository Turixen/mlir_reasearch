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
            [[4.280360, 4.754972, 2.036059, 6.996547, 3.473437, 9.970961, 2.066165, 8.382527, 5.773943, 2.635926], [4.860053, 2.234996, 7.404751, 2.905845, 8.608005, 0.298578, 7.104014, 9.912721, 4.539718, 6.919167], [9.104896, 0.221191, 9.499217, 9.970775, 2.263864, 3.514750, 5.578657, 6.582792, 5.578337, 3.766710], [9.703454, 5.085754, 8.769411, 0.647637, 2.402982, 0.435236, 1.503858, 6.173754, 1.828708, 3.453020], [5.191875, 8.968044, 5.093703, 1.187979, 4.013506, 8.661742, 6.093083, 0.010430, 6.974326, 0.331766], [8.782776, 5.932863, 1.718537, 7.606055, 2.401045, 8.593689, 9.965574, 2.813528, 9.473532, 2.910694], [2.178596, 8.461211, 9.238179, 3.676363, 7.787108, 9.477942, 9.425033, 3.502790, 8.849734, 3.237579], [9.292022, 1.346822, 1.736657, 6.041491, 1.692468, 3.138493, 6.729823, 0.805124, 6.387608, 2.743458], [3.234762, 4.813732, 1.393704, 7.015113, 4.885028, 9.310766, 0.054998, 5.585808, 5.975836, 0.307277], [8.734511, 3.877953, 2.801003, 1.635390, 4.662906, 4.068104, 2.605813, 3.443711, 8.329882, 4.905736]]
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
        %values = arith.constant dense<[6.507764, 3.188719, 7.477271, 2.467898, 7.005008, 1.173344, 0.717347, 0.225890, 5.486624, 7.475231, 6.046721, 9.205893, 1.649068, 5.636637, 8.966860, 3.849053, 3.807361, 8.369983, 3.310622, 9.738629, 1.559404, 2.782011, 0.118548, 2.833139, 0.698609, 1.703797, 9.728456, 4.401637, 5.270746, 0.169696, 8.963065, 1.804354, 4.565677, 6.016633, 9.096176, 3.346897, 8.012042, 5.566160, 4.580514, 9.648664]> : tensor<40xf64>
        %row_ptr = arith.constant dense<[0, 7, 10, 12, 18, 22, 26, 30, 33, 34, 40]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 3, 4, 5, 6, 9, 1, 3, 6, 0, 5, 0, 3, 5, 6, 7, 9, 1, 4, 6, 7, 4, 7, 8, 9, 0, 3, 6, 9, 2, 8, 9, 4, 0, 3, 5, 6, 7, 9]> : tensor<40xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<40xindex>), tensor<40xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
