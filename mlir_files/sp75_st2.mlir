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

    func.func @main() -> i64 {
        %c = tensor.empty() : tensor<10x10xf64>
        %t_sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %s = arith.constant dense<[
            [[7.245222, 9.796325, 7.668513, 5.710349, 9.084682, 1.189223, 2.423961, 5.088674, 4.580094, 6.351980], [6.484101, 2.689275, 6.047707, 6.336779, 5.302389, 9.775503, 2.113368, 5.919309, 1.929678, 4.677397], [0.954871, 7.662606, 0.229756, 3.056903, 2.742551, 2.681169, 2.124503, 5.022378, 8.675536, 4.133645], [4.927487, 7.167593, 0.323534, 5.742582, 3.335373, 3.246145, 1.729992, 0.576325, 1.632626, 4.544364], [0.861837, 7.359639, 1.658107, 5.475280, 1.616419, 7.435225, 1.180403, 1.716672, 9.635800, 1.166573], [2.386541, 3.577087, 8.112825, 4.329260, 6.699428, 2.881948, 1.331973, 2.078954, 3.852228, 3.674167], [3.965653, 5.838820, 5.972820, 7.319098, 5.904572, 3.692695, 8.710099, 4.931367, 0.002748, 7.152224], [2.240753, 9.749874, 3.186605, 6.966607, 4.381015, 2.846309, 6.559120, 8.669439, 1.263587, 3.625219], [1.152995, 5.215269, 1.450207, 7.975840, 6.177366, 0.683091, 8.124874, 6.431141, 4.795306, 9.662888], [9.637840, 6.817178, 1.347926, 2.007401, 7.113993, 6.604247, 3.987179, 0.903486, 6.935373, 6.241385]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[4.351353, 1.064156, 0.142211, 4.009599, 5.858839, 6.789847, 6.626684, 3.712654, 4.709286, 0.824216, 7.570527, 8.698763, 8.159688, 1.446475, 5.587180, 5.319006, 4.201432, 4.400575, 4.768706, 3.882410, 4.983910, 2.862591, 9.451590, 3.724255, 6.362904]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
