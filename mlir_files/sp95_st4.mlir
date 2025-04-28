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
            [[0.499438, 8.768372, 6.156123, 2.725867, 5.847808, 6.557893, 5.265763, 4.406010, 7.288713, 6.748670], [3.643573, 9.274631, 5.621005, 8.643967, 7.923699, 9.718933, 6.867722, 9.538812, 3.758430, 1.673059], [2.060868, 9.513411, 9.441240, 4.057236, 5.544891, 4.696824, 3.360971, 3.242321, 9.560900, 5.702274], [7.899711, 0.841845, 2.981670, 6.976326, 6.438276, 7.399673, 3.315372, 5.369664, 5.750978, 5.270468], [8.050509, 6.663696, 2.585539, 0.100816, 8.315064, 2.425419, 5.968453, 5.301459, 1.079734, 1.841810], [5.268509, 7.075980, 7.923546, 2.372716, 1.202865, 5.981494, 6.956972, 6.383947, 5.998455, 1.830050], [6.337090, 0.896400, 2.955554, 5.039565, 1.749429, 9.488384, 2.330872, 3.640338, 6.811788, 5.855457], [8.838589, 2.575933, 8.414681, 5.999019, 0.746682, 7.002476, 4.621802, 2.185144, 5.584863, 8.507166], [4.266566, 2.942097, 0.422599, 5.590717, 8.257924, 6.993467, 0.577708, 6.811932, 6.463749, 3.953450], [6.887167, 9.619879, 1.844109, 3.697127, 3.826179, 9.845930, 6.911704, 6.790881, 2.298154, 0.744068]]
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
        %values = arith.constant dense<[3.119451, 8.029182, 1.349870, 5.287388, 9.686195]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 2, 4, 4, 4, 4, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 4, 0, 4, 4]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
