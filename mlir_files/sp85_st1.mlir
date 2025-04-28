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
            [[5.312405, 2.998063, 5.033808, 6.049946, 9.104327, 7.680574, 9.286859, 1.084133, 5.611883, 7.977845], [6.066237, 6.309224, 2.201853, 4.870309, 5.439345, 5.168180, 6.028933, 7.115858, 2.752110, 4.396067], [0.577123, 0.144869, 9.365351, 7.281203, 0.674886, 2.828959, 5.796412, 0.431769, 9.439747, 0.754538], [3.937766, 3.876304, 6.500577, 1.051709, 5.538353, 7.158145, 3.678650, 1.324956, 5.012600, 6.395284], [9.211613, 5.510145, 8.201272, 7.169930, 0.082239, 6.397969, 6.804923, 0.023980, 3.917306, 6.439384], [0.886221, 3.037550, 9.817430, 5.909697, 6.302279, 7.227862, 6.452811, 2.661066, 2.271861, 0.612310], [4.746143, 4.937427, 1.418969, 7.787503, 8.816869, 9.987445, 9.280196, 7.750409, 2.704877, 7.876448], [3.551887, 4.525329, 1.302234, 0.439124, 6.074939, 0.408023, 5.447774, 1.109563, 1.406169, 8.997601], [9.630242, 2.376182, 9.455821, 9.051930, 8.582606, 7.935018, 5.016854, 9.880165, 1.797995, 0.236139], [6.575273, 6.610261, 3.091018, 5.339923, 2.383864, 4.727892, 0.455308, 2.845162, 9.466258, 7.000728]]
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
        %values = arith.constant dense<[1.136759, 2.242080, 8.477436, 7.207738, 7.516794, 8.383609, 3.919188, 5.551599, 5.531681, 1.551997, 5.830592, 8.456070, 6.977638, 6.302124, 7.768263]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 2, 3, 4, 6, 8, 9, 11, 12, 13, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 7, 5, 8, 0, 4, 0, 4, 8, 2, 3, 9, 0, 5, 6]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
