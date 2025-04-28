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
            [[1.534524, 5.958926, 2.104002, 7.684973, 0.933749, 8.829556, 2.423071, 3.057836, 3.998966, 1.845166], [2.663044, 6.125033, 5.517010, 7.711355, 2.313468, 6.339875, 5.471843, 9.161406, 6.814104, 9.401636], [7.424731, 1.015427, 8.413957, 7.521575, 1.757330, 7.545460, 4.107341, 6.721733, 4.768894, 2.649487], [3.033032, 5.581268, 7.003514, 6.848443, 0.162001, 6.344130, 0.425812, 7.786106, 3.693492, 5.319386], [5.873461, 2.964726, 7.975829, 2.971644, 1.923375, 0.871493, 3.188221, 1.934229, 0.716305, 4.743350], [2.536247, 8.827076, 2.250289, 7.434160, 0.376730, 2.969945, 8.381274, 0.524103, 9.159720, 4.222684], [4.570490, 9.197028, 6.302430, 4.114013, 5.074159, 3.039003, 0.960957, 9.036668, 7.376305, 0.960236], [3.974869, 5.741405, 8.991585, 0.670969, 9.326408, 4.627283, 7.035878, 5.828002, 7.641076, 9.737876], [6.463207, 0.689643, 5.002189, 8.256406, 2.201921, 9.760884, 4.966040, 4.421577, 4.095865, 4.418019], [2.125629, 1.500196, 0.270360, 1.129045, 7.311342, 7.277378, 0.346723, 7.151188, 2.415518, 4.775355]]
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
        %values = arith.constant dense<[5.239106, 1.618634, 5.549794, 0.233666, 9.786235, 4.734269, 9.785194, 6.323707, 0.032470, 3.085447, 5.896483, 7.669530, 8.549903, 5.250974, 2.383525, 1.217499, 0.889280, 8.809818, 9.243239]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 8, 8, 12, 12, 15, 15, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 2, 4, 6, 8, 2, 4, 6, 8, 2, 6, 8, 0, 2, 6, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
