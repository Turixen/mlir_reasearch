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
            [[2.470501, 4.702719, 5.982558, 7.765949, 3.238603, 1.592162, 8.264646, 3.992516, 6.225867, 4.855490], [7.145951, 9.603077, 9.595857, 2.309983, 8.054224, 4.776415, 4.511475, 5.706074, 2.814101, 3.930711], [4.067044, 2.117133, 6.780012, 9.301368, 1.081441, 9.778709, 8.310886, 3.791065, 1.470874, 7.578859], [9.973719, 2.014605, 1.682511, 9.787043, 2.681517, 9.007092, 1.621603, 3.364285, 7.106014, 1.175672], [3.048058, 1.120324, 2.113542, 2.742145, 9.067437, 3.657007, 4.393886, 7.525190, 3.413965, 5.211259], [5.319558, 0.736381, 9.171566, 0.128325, 7.319177, 7.688148, 9.180318, 3.843546, 8.263234, 2.373189], [2.830554, 4.549047, 8.781983, 8.751867, 6.394542, 5.048233, 6.976635, 6.151946, 6.442927, 0.176864], [0.939078, 9.548138, 5.595804, 5.554551, 5.174442, 2.582577, 8.761053, 0.307340, 1.532243, 9.191328], [8.598779, 3.713608, 3.157489, 0.523739, 3.163875, 6.693502, 0.138487, 7.497820, 7.836932, 5.491055], [7.563155, 0.918483, 3.130574, 3.469939, 8.331238, 3.078274, 4.432675, 9.195613, 2.002627, 9.371702]]
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
        %values = arith.constant dense<[4.959173, 3.622950, 5.700918, 6.703861, 6.785660, 9.893773, 4.977515, 5.886100, 8.080835, 2.044713, 5.971451, 4.078866, 3.640640, 7.728448, 5.325926, 1.030368, 8.769067, 7.486721, 9.595077, 0.084490, 6.764295, 9.335473, 9.819689, 7.699894, 2.479311, 9.488642, 9.471021, 0.323173, 1.618350, 3.725363, 4.057315, 5.214193, 5.394614, 9.771898, 9.569075]> : tensor<35xf64>
        %row_ptr = arith.constant dense<[0, 6, 9, 16, 16, 21, 21, 26, 28, 34, 35]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 2, 4, 6, 8, 0, 3, 8, 0, 1, 2, 4, 5, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 2, 9, 0, 2, 3, 4, 6, 8, 7]> : tensor<35xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<35xindex>), tensor<35xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
