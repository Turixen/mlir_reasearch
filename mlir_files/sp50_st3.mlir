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
            [[7.834679, 8.894593, 5.771431, 9.157224, 2.027071, 6.994041, 8.247273, 2.827117, 6.070805, 2.777387], [6.891312, 9.764542, 7.707553, 4.533223, 5.447802, 3.348302, 7.562147, 6.759871, 4.918752, 7.475765], [4.650088, 8.862256, 8.149886, 1.369722, 2.061053, 6.609166, 4.741028, 8.078454, 9.735264, 8.554789], [9.595568, 4.429227, 6.559182, 1.217209, 9.980248, 6.980979, 9.169362, 6.280740, 8.615590, 1.792469], [9.781077, 9.616305, 5.567261, 4.776148, 4.755768, 4.378222, 3.547960, 1.520767, 9.672589, 1.953699], [7.120525, 4.863449, 0.804409, 6.106083, 9.482485, 6.221674, 9.411678, 0.712748, 8.876546, 0.434259], [9.789906, 6.005587, 8.368452, 7.471712, 7.763745, 1.902386, 9.007153, 1.773860, 6.683992, 1.174653], [9.163775, 6.735350, 2.574090, 4.656763, 5.565225, 1.377292, 6.518642, 7.028938, 7.426237, 0.809027], [7.422679, 7.761474, 5.953694, 2.980149, 7.360702, 5.859117, 4.489972, 0.684401, 3.168775, 7.218669], [4.847749, 9.758714, 2.613731, 9.472963, 2.612903, 0.428224, 9.481277, 5.343650, 6.856736, 7.728649]]
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
        %values = arith.constant dense<[5.362760, 2.173917, 2.766744, 1.202276, 0.178081, 8.945683, 2.622033, 3.970009, 8.707719, 1.118830, 6.937579, 2.479360, 5.934059, 6.358896, 3.980815, 4.008741, 6.127680, 3.637348, 7.070267, 7.777483, 0.078968, 3.940483, 5.878534, 9.399670, 3.571840, 0.573105, 3.476727, 6.559191, 9.816718, 0.020905, 6.526047, 3.017059, 6.876672, 3.564311, 4.220128, 0.557478, 0.527609, 5.756823, 4.850639, 5.464364, 3.181351, 5.280443, 8.579143, 9.574403, 2.769222, 1.196294, 7.558506, 8.874202, 7.296162, 3.218318]> : tensor<50xf64>
        %row_ptr = arith.constant dense<[0, 8, 10, 16, 22, 27, 32, 36, 38, 43, 50]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 3, 4, 5, 6, 8, 9, 1, 2, 0, 1, 2, 3, 8, 9, 0, 1, 2, 3, 6, 9, 1, 2, 4, 7, 9, 4, 5, 6, 7, 9, 0, 3, 6, 9, 4, 7, 3, 5, 6, 7, 9, 0, 2, 3, 5, 6, 8, 9]> : tensor<50xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
