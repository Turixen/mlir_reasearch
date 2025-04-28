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
            [[5.092430, 6.547905, 4.359215, 6.134508, 8.048268, 9.476800, 8.315862, 3.251888, 6.459882, 8.615990], [3.744265, 2.704313, 7.415573, 0.490466, 2.965113, 4.641906, 8.117847, 3.924466, 7.426139, 1.319159], [9.928652, 3.703632, 6.610148, 1.651511, 7.584377, 3.629419, 5.731086, 0.364134, 6.708532, 5.000586], [6.020950, 8.384855, 7.693401, 7.395332, 2.218315, 5.093385, 5.311192, 9.089049, 2.805199, 9.580761], [7.354439, 7.953879, 3.920686, 1.152451, 8.458422, 3.420882, 9.120283, 9.274086, 8.041179, 7.391662], [8.785960, 2.885841, 6.136033, 6.195965, 2.152780, 8.464996, 6.086238, 9.297153, 7.989219, 4.122151], [3.434533, 2.976729, 2.304171, 2.633460, 8.567828, 7.377898, 4.382403, 4.996548, 0.954964, 1.809188], [0.550406, 1.564725, 4.872892, 8.012080, 5.837688, 7.590666, 1.179696, 0.893995, 0.595518, 1.392939], [7.721317, 2.237814, 4.690343, 4.776221, 7.405190, 0.363513, 5.744951, 4.441077, 6.344475, 2.478922], [2.701940, 7.581894, 0.722595, 4.244534, 0.091431, 8.232411, 0.646836, 9.207143, 0.826960, 6.486129]]
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
        %values = arith.constant dense<[8.278550, 1.935886, 0.402871, 2.065134, 8.364644, 2.206901, 9.918703, 7.323362, 3.357270, 9.859536, 2.552268, 5.135376, 9.433168, 0.348914, 5.946825, 7.958617, 3.591498, 1.279388, 9.645995, 2.174808, 1.565480, 3.921200, 2.130425, 3.235501, 6.404879, 3.930118, 2.784009, 9.467679, 2.930302, 2.464201]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 6, 6, 11, 13, 18, 18, 23, 23, 29, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 2, 4, 6, 8, 0, 2, 4, 6, 8, 5, 6, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 5, 6, 8, 9]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
