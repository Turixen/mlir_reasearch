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
            [[1.739887, 4.772955, 7.157392, 2.998825, 7.141785, 8.722451, 6.192947, 8.802497, 4.842918, 4.320974], [5.025511, 4.316423, 1.265385, 6.156129, 0.897333, 6.138214, 0.695397, 5.330689, 7.614267, 8.528172], [2.068430, 9.644805, 4.971609, 4.424896, 7.220428, 2.376933, 6.460162, 1.687981, 6.982577, 5.070181], [4.981686, 6.278902, 3.764131, 0.463201, 5.299367, 2.298134, 7.317902, 1.229949, 7.022207, 3.435879], [0.672127, 2.965093, 3.646500, 3.692556, 6.802027, 3.014013, 8.132969, 0.230262, 1.918836, 2.755254], [3.631067, 0.232670, 9.129002, 4.146882, 8.336563, 6.857094, 5.486688, 2.122849, 3.429689, 2.831291], [0.700386, 9.102869, 6.104570, 6.169710, 7.895644, 3.731990, 1.844853, 2.362745, 7.685746, 8.767892], [6.342823, 6.731366, 5.164806, 9.425920, 5.411505, 0.666581, 1.954206, 1.053526, 6.949290, 0.912668], [8.381740, 9.940257, 2.092214, 4.963462, 2.352174, 8.566874, 9.269046, 4.782022, 6.330804, 8.991171], [4.323343, 0.860272, 0.522444, 0.272663, 7.824119, 4.554803, 8.258278, 7.174466, 6.286661, 8.194441]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[3.833878, 3.215343, 9.712368, 1.076672, 3.241953, 0.929187, 0.732583, 9.154569, 0.680777, 2.290817, 6.189761, 1.081720, 4.029601, 7.374231, 6.878467, 8.850778, 4.772495, 5.888691, 2.172036, 2.616277, 9.833622, 6.675629, 7.091604, 9.917760, 4.847748]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 2, 5, 9, 12, 13, 14, 17, 20, 23, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 9, 4, 6, 8, 0, 1, 2, 9, 1, 4, 6, 4, 6, 0, 2, 7, 2, 3, 5, 0, 1, 7, 2, 5]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
