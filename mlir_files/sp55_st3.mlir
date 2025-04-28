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
            [[4.927552, 3.900486, 3.512327, 5.728637, 1.651017, 8.039603, 5.340134, 7.718624, 3.597889, 6.213888], [8.526434, 5.192913, 6.370904, 1.502285, 8.899693, 8.600585, 0.079274, 9.197147, 5.441751, 0.896467], [2.461008, 8.201128, 8.208967, 2.230009, 2.708574, 2.550391, 3.663417, 6.221846, 7.094295, 5.363899], [5.852140, 7.535443, 3.617820, 2.473246, 5.904132, 5.121083, 4.354808, 8.362051, 9.254596, 5.354885], [4.359279, 7.821844, 5.119768, 2.786502, 9.735366, 5.716556, 0.959273, 4.840296, 2.005060, 2.239754], [9.278917, 4.776891, 0.231240, 4.923013, 5.719509, 4.453978, 6.615574, 7.656842, 9.815967, 8.579328], [4.386093, 6.431484, 3.683828, 7.326847, 8.941330, 6.600023, 1.418419, 0.073387, 8.769212, 9.197660], [8.860158, 9.691909, 5.507963, 2.798935, 8.629507, 7.588730, 8.734355, 9.426831, 7.598904, 4.348673], [3.749788, 3.993217, 2.543757, 7.907175, 8.616871, 6.739683, 4.004420, 7.404709, 9.962631, 9.982845], [1.774656, 2.528504, 2.579728, 9.305574, 4.710599, 6.725173, 3.546584, 2.479116, 2.547669, 1.623026]]
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
        %values = arith.constant dense<[8.903714, 3.586758, 1.729375, 8.354335, 9.226867, 8.091855, 1.032895, 5.928770, 4.372924, 6.737573, 5.447609, 9.148975, 9.519377, 8.684784, 2.110382, 1.435427, 9.875182, 1.464446, 9.768814, 5.565883, 1.804044, 4.526519, 9.055627, 0.563582, 6.405990, 8.559168, 9.082537, 2.930674, 0.888453, 9.575459, 8.397740, 7.183177, 0.287648, 3.706486, 1.101979, 7.970439, 6.079892, 8.563722, 0.612447, 9.402981, 8.602565, 3.447227, 8.917156, 1.615642, 3.662469]> : tensor<45xf64>
        %row_ptr = arith.constant dense<[0, 6, 11, 15, 22, 26, 28, 34, 38, 38, 45]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 3, 6, 7, 9, 0, 3, 4, 6, 7, 1, 3, 7, 9, 0, 1, 3, 5, 6, 7, 9, 0, 3, 7, 8, 5, 8, 0, 2, 3, 5, 6, 9, 0, 1, 2, 6, 0, 1, 2, 3, 6, 8, 9]> : tensor<45xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<45xindex>), tensor<45xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
