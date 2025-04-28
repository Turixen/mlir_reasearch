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
            [[7.761387, 6.763491, 0.282021, 4.685361, 2.434494, 6.967148, 2.126921, 0.350614, 9.788326, 0.175186], [3.263667, 3.429074, 2.626186, 3.016402, 4.138773, 4.655987, 7.656297, 1.611592, 0.137412, 0.529163], [5.776619, 2.682859, 3.058309, 4.030940, 0.583393, 5.869397, 0.636558, 4.952122, 8.220242, 2.251644], [6.486044, 4.853229, 4.681714, 8.840113, 2.069953, 2.448286, 2.007597, 6.391410, 4.099593, 2.525549], [4.781292, 1.937340, 6.499845, 6.064557, 6.786840, 0.304655, 1.013259, 1.350307, 0.973786, 3.815753], [1.102110, 7.498348, 2.751581, 6.750664, 4.830959, 4.874754, 5.389149, 4.030464, 7.253065, 3.475673], [5.003775, 5.434827, 4.962935, 1.872359, 7.977088, 0.647240, 2.606640, 2.363544, 6.501538, 8.634977], [9.269979, 4.696191, 9.708976, 5.428091, 7.456278, 9.047003, 1.270770, 6.901616, 7.725727, 2.019251], [5.875191, 5.241619, 4.130310, 4.525174, 6.158732, 8.612564, 7.854627, 2.496127, 8.464313, 5.830826], [7.571862, 6.586448, 2.525619, 1.685602, 3.906532, 8.635086, 7.406005, 8.758111, 7.766642, 4.079732]]
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
        %values = arith.constant dense<[8.592286, 3.190605, 4.748684, 1.438929, 9.029319, 9.026425, 2.471365, 2.318526, 1.595918]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 2, 2, 5, 5, 7, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 4, 0, 6, 8, 2, 8, 0, 6]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
