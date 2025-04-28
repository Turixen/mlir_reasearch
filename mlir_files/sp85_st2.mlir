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
            [[7.872014, 2.555256, 8.796422, 7.044179, 2.118408, 2.569457, 8.674604, 1.978765, 6.824570, 3.516126], [3.326808, 4.211636, 1.003758, 6.435825, 0.882792, 8.468355, 9.394447, 0.262393, 3.351462, 9.513699], [6.347423, 8.166311, 5.661477, 3.321805, 8.162237, 2.280617, 1.722552, 8.262043, 1.177839, 0.411305], [7.087066, 0.600139, 2.897324, 6.824078, 5.910412, 7.135188, 6.793774, 1.589828, 2.648334, 5.164723], [4.337753, 2.545288, 7.209965, 2.277117, 5.690292, 1.098980, 0.870487, 9.393447, 0.579424, 3.829688], [5.730268, 9.817892, 7.182311, 3.429166, 1.345616, 5.224254, 8.280502, 9.974187, 9.697646, 9.609123], [6.828612, 1.560563, 4.831834, 5.149052, 6.874102, 7.710947, 0.802226, 5.877251, 4.690337, 6.433444], [6.642263, 9.717705, 4.253435, 9.753058, 6.509390, 2.853321, 7.790763, 2.036050, 2.806752, 1.421547], [6.484494, 0.204956, 1.403672, 3.443204, 7.168894, 0.678258, 3.088823, 5.424093, 5.266039, 7.063545], [5.709737, 9.249268, 4.974330, 7.988476, 6.373919, 6.724021, 1.357016, 9.474259, 3.014652, 6.024904]]
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
        %values = arith.constant dense<[4.941353, 9.222681, 9.718843, 3.748688, 2.342396, 9.995175, 4.548758, 3.460039, 7.159573, 4.964533, 6.765822, 6.314358, 2.636100, 1.131199, 1.754677]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 5, 5, 8, 8, 12, 12, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 6, 8, 0, 2, 0, 4, 6, 2, 4, 6, 8, 0, 2, 6]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
