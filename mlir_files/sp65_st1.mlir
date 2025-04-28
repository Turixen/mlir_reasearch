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
            [[5.634806, 6.734250, 4.192952, 5.817064, 7.418231, 5.805469, 3.217701, 7.786370, 8.393020, 6.746398], [7.022668, 6.526054, 0.404646, 3.558367, 2.646903, 9.044223, 5.319848, 4.692116, 6.629784, 4.731283], [1.298609, 4.812872, 0.287147, 1.251516, 6.826269, 7.690865, 7.924011, 3.677366, 7.557673, 5.303769], [1.842301, 4.869127, 2.914328, 3.562901, 2.031739, 9.783449, 0.067303, 1.096635, 8.174543, 8.352261], [6.494778, 3.844237, 1.947405, 2.943045, 9.668150, 8.358421, 1.466400, 3.815326, 1.838069, 1.731418], [4.432691, 8.193437, 5.387009, 4.531433, 9.391019, 6.283919, 6.452190, 5.043129, 2.353041, 6.502367], [3.713041, 6.564775, 1.007845, 8.855153, 8.074102, 4.276741, 1.209662, 6.282504, 2.276997, 4.011974], [8.014294, 1.293913, 9.439230, 9.311418, 0.129618, 4.990018, 4.664525, 0.026944, 6.451600, 5.471411], [5.524173, 9.886594, 6.848981, 3.593436, 8.120084, 1.887059, 1.859127, 1.299034, 2.581825, 1.189006], [7.582250, 8.877036, 7.168253, 7.501354, 8.575189, 9.921705, 4.542527, 0.743373, 4.387232, 5.292660]]
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
        %values = arith.constant dense<[3.384650, 3.577854, 0.362594, 5.780637, 0.114299, 2.265335, 1.705801, 7.385877, 6.109855, 3.807084, 1.040988, 6.313969, 8.574118, 6.276115, 4.508975, 5.172952, 6.707986, 8.233016, 5.092351, 6.000379, 5.500426, 5.117589, 6.363312, 0.330792, 2.406654, 4.492523, 8.842361, 7.427181, 9.827591, 5.922243, 8.803117, 7.405031, 7.498616, 4.683164, 0.936428]> : tensor<35xf64>
        %row_ptr = arith.constant dense<[0, 1, 4, 7, 12, 17, 20, 24, 28, 31, 35]> : tensor<11xindex>
        %col_ind = arith.constant dense<[1, 4, 6, 9, 2, 5, 6, 1, 2, 3, 5, 9, 2, 5, 6, 8, 9, 0, 5, 8, 2, 3, 6, 8, 0, 2, 6, 7, 0, 7, 9, 1, 5, 6, 8]> : tensor<35xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<35xindex>), tensor<35xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
