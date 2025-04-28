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
            [[1.446042, 4.534452, 4.754246, 2.584080, 6.400584, 7.473407, 7.610670, 1.331626, 5.323689, 2.896335], [8.361772, 6.067697, 6.997201, 0.267787, 8.099001, 5.852143, 6.110866, 1.420251, 7.035752, 3.112196], [3.391096, 4.866507, 0.714502, 8.903679, 7.832698, 6.338690, 9.134662, 3.400152, 0.656395, 2.532209], [5.226610, 7.456204, 7.466354, 7.736348, 0.491138, 9.985567, 7.619359, 7.936658, 9.216532, 4.063677], [6.064825, 2.564879, 8.014155, 7.205685, 2.623832, 7.619578, 1.713294, 6.836350, 6.556691, 3.201965], [0.870305, 8.003855, 6.074911, 4.351767, 5.460615, 8.643494, 1.767238, 6.357946, 3.070772, 7.852204], [1.805668, 1.414155, 9.458711, 1.680059, 1.155187, 6.451491, 4.662730, 5.052121, 6.347647, 1.935523], [0.817304, 2.609117, 6.920863, 4.459558, 0.768436, 6.057550, 9.519457, 4.036751, 2.640683, 1.162449], [0.553083, 0.515576, 4.462322, 0.146101, 5.462548, 3.290095, 1.131233, 7.707184, 0.622834, 3.788731], [3.948082, 5.175871, 1.394641, 8.085968, 7.568083, 1.408762, 1.659808, 7.335253, 7.821351, 4.236080]]
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
        %values = arith.constant dense<[3.721627, 1.199215, 4.031868, 5.033681, 8.781736, 4.080783, 9.487628, 4.325670, 2.231632, 6.497178, 9.451705, 9.728370, 9.914878, 0.586300, 6.377804]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 3, 7, 7, 7, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 6, 9, 0, 3, 6, 9, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
