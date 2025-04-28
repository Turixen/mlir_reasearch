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
            [[3.307416, 7.092872, 9.592800, 1.891814, 3.213818, 1.426128, 3.274249, 2.939673, 1.752105, 8.549749], [6.973364, 7.957421, 9.905124, 2.809418, 4.990965, 3.292324, 0.065290, 4.407640, 8.016380, 7.555611], [9.370706, 2.703774, 9.112907, 8.898497, 8.918646, 8.380537, 8.598784, 9.497911, 3.640976, 4.888711], [9.347501, 4.761464, 8.444675, 7.575790, 9.776891, 7.815498, 4.548098, 7.326006, 6.151162, 7.410354], [8.320320, 1.643241, 9.378099, 6.782552, 7.995824, 1.602357, 4.180101, 8.849426, 4.837961, 2.569791], [8.369214, 5.579369, 4.906615, 0.177446, 6.021325, 2.456277, 0.975374, 0.703788, 2.717339, 7.868103], [1.521713, 4.711589, 2.752672, 7.654840, 3.726860, 5.199352, 8.146280, 1.506845, 5.847634, 0.804358], [2.294244, 7.500667, 9.437483, 0.252833, 2.741170, 0.086855, 8.854409, 3.099470, 8.256644, 2.315632], [7.960018, 9.712398, 8.224163, 1.450633, 9.761546, 6.734649, 9.302666, 3.817108, 6.356407, 2.296848], [7.440866, 2.679112, 7.342164, 3.441743, 3.237322, 1.990169, 7.044287, 5.405855, 4.530962, 4.726435]]
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
        %values = arith.constant dense<[3.764621, 3.478020, 4.216060, 8.011694, 9.547503, 3.179348, 3.910432, 4.676692, 2.174185, 4.155850, 3.359131, 6.017537, 7.257440, 3.490110, 8.126317, 9.010682, 6.304973, 5.561475, 7.110105]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 1, 3, 5, 6, 9, 11, 15, 16, 18, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[7, 8, 9, 4, 9, 2, 1, 3, 6, 5, 9, 1, 2, 3, 4, 9, 3, 8, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
