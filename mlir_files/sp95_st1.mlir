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
            [[7.581389, 7.234854, 9.263015, 7.655218, 3.228549, 9.111752, 0.636088, 2.112826, 3.353967, 0.868094], [8.184188, 3.842527, 5.342712, 1.435349, 7.727257, 9.570138, 9.336166, 9.009624, 5.680423, 2.840322], [6.834656, 8.479112, 9.280667, 6.254074, 0.819187, 6.408827, 4.450746, 6.611063, 2.112888, 9.349537], [8.197201, 1.896358, 9.111685, 8.735989, 4.902627, 3.566462, 7.371291, 4.586846, 7.385512, 2.718421], [5.300390, 4.640584, 0.031006, 4.020530, 9.272593, 8.303543, 9.881833, 5.854726, 8.928178, 5.551912], [1.444140, 5.216162, 3.099506, 3.830958, 2.685795, 8.622189, 6.877524, 2.234808, 3.959804, 7.639529], [2.272446, 7.813512, 8.276654, 6.374741, 6.022338, 0.788565, 8.052392, 6.218224, 7.622200, 6.128658], [6.389602, 8.473813, 6.163931, 7.817339, 1.666140, 5.040377, 7.210755, 5.058450, 4.069738, 9.700196], [6.203924, 7.376698, 1.002131, 0.681178, 9.343074, 4.469958, 3.336827, 8.916236, 6.974271, 3.611589], [8.540247, 5.483140, 5.268523, 4.545455, 4.838506, 4.295290, 2.916137, 7.542309, 3.204524, 7.949919]]
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
        %values = arith.constant dense<[7.426938, 9.721024, 4.541975, 1.663570, 2.860013]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 2, 2, 3, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[7, 6, 2, 1, 5]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
