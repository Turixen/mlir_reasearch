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
            [[7.058561, 8.509282, 0.834535, 9.703036, 4.973852, 9.486887, 1.502200, 9.036935, 4.173676, 9.432907], [3.628266, 9.227599, 3.306393, 2.799305, 1.380882, 2.466879, 4.316072, 5.859058, 8.340122, 2.104455], [9.105160, 9.013927, 7.838358, 2.627348, 9.684176, 8.788308, 8.426766, 9.997508, 3.985798, 6.290205], [7.748439, 5.589285, 0.614708, 3.773482, 6.539249, 1.789576, 7.917327, 6.300889, 6.907331, 0.764179], [5.968769, 2.961475, 7.617648, 3.107040, 2.046073, 2.655514, 1.019354, 7.268693, 7.938834, 5.773177], [1.171197, 2.109823, 3.801244, 3.313392, 1.538659, 8.398474, 2.231348, 8.318553, 4.537078, 6.885499], [5.241648, 9.446296, 0.492102, 9.099190, 7.572577, 4.831862, 7.334224, 7.420560, 1.623298, 5.817078], [7.687781, 4.968409, 7.269841, 5.931182, 3.608403, 6.049234, 0.976772, 9.389840, 8.629463, 9.121736], [8.138028, 3.528078, 4.580885, 0.503321, 8.854200, 8.425860, 3.498535, 6.534513, 5.562257, 8.564534], [6.114434, 0.670591, 2.254589, 4.528121, 1.758651, 3.770030, 9.780091, 9.738411, 4.100687, 6.107265]]
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
        %values = arith.constant dense<[9.750009, 6.065654, 2.969772, 8.430170, 7.770194, 0.423258, 0.305007, 7.534149, 4.104963, 2.645031, 6.341052, 6.882876, 3.758809, 8.564878, 1.562830, 2.842316, 4.286757, 4.775787, 2.945636, 8.002898, 7.379734, 8.992696, 2.013064, 8.445266, 0.850894, 7.085127, 6.762633, 6.482889, 4.680545, 9.711754]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 3, 7, 10, 15, 16, 19, 22, 25, 29, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 6, 7, 3, 4, 7, 9, 2, 6, 9, 3, 4, 5, 6, 8, 7, 1, 6, 8, 4, 8, 9, 5, 6, 9, 0, 5, 6, 7, 2]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
