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
            [[6.211090, 1.680998, 0.568470, 7.113102, 2.520604, 8.166292, 9.790339, 4.013742, 6.954315, 6.571591], [7.074892, 1.677529, 6.745864, 1.358875, 7.590666, 1.457538, 6.038770, 4.907834, 0.160880, 3.077884], [2.065963, 8.876054, 6.768953, 4.880325, 5.287964, 5.863316, 6.768989, 2.144674, 4.291907, 8.479944], [1.856099, 6.822419, 1.377487, 7.384674, 9.650506, 9.677770, 0.664361, 8.779763, 7.541627, 9.739682], [6.573257, 4.701607, 4.851693, 1.353717, 6.933612, 6.960527, 3.196782, 0.084499, 1.761702, 8.590584], [4.793012, 4.622449, 0.335670, 0.750873, 7.289118, 3.686186, 5.019592, 4.195345, 7.031816, 8.651229], [9.348617, 0.512015, 4.643223, 7.391897, 4.100561, 8.550194, 7.725040, 2.126821, 1.885346, 8.878766], [5.314893, 4.113422, 8.011992, 2.619175, 4.528483, 4.795264, 5.149981, 9.862448, 3.627450, 0.692326], [0.516270, 0.472843, 3.488419, 3.268526, 3.422750, 1.934481, 0.012415, 9.765840, 1.061611, 4.874608], [9.950713, 7.540359, 2.752487, 3.337251, 7.360022, 4.517666, 1.738524, 6.828599, 9.614032, 8.889870]]
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
        %values = arith.constant dense<[1.749440, 4.447894, 3.314336, 9.238346, 7.139647, 4.777583, 3.055090, 9.125021, 2.673081]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 2, 3, 3, 5, 7, 8, 8, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 8, 6, 7, 8, 2, 9, 7, 2]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
