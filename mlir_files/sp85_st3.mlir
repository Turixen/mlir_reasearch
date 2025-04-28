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
            [[1.802601, 1.894335, 0.678987, 0.217887, 9.204525, 4.335382, 4.105614, 3.699405, 4.138626, 4.957965], [0.833194, 2.679649, 3.900866, 0.011937, 3.208782, 0.566211, 0.764540, 8.560602, 0.097305, 6.444256], [0.444139, 0.346442, 0.387160, 2.382159, 0.188007, 9.275806, 4.276746, 6.730267, 7.657218, 1.069801], [9.133718, 9.720129, 5.548450, 3.249427, 4.858783, 1.895716, 0.735497, 3.165888, 6.351299, 5.712696], [2.109731, 5.371240, 4.938986, 7.596441, 1.958086, 9.908660, 0.990174, 4.954453, 2.925017, 8.914360], [3.672670, 6.215708, 0.292923, 4.144275, 3.158750, 7.481968, 5.108336, 3.934956, 3.831786, 4.447026], [3.334721, 3.543153, 1.310220, 9.508766, 6.131741, 3.663974, 1.691672, 9.043160, 0.138980, 3.625517], [3.221893, 3.828750, 2.790799, 6.788010, 4.666064, 8.097812, 8.323346, 4.665557, 3.575830, 1.519503], [5.832095, 2.279639, 6.764025, 8.592064, 5.760833, 3.569175, 7.018396, 9.887876, 7.340063, 0.377611], [5.263859, 1.691290, 6.593973, 5.254518, 6.900019, 8.061744, 9.373094, 4.469890, 0.147469, 8.484351]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[4.085302, 8.392432, 4.056958, 9.078459, 5.292086, 4.620722, 0.728088, 9.022129, 5.198147, 3.932723, 9.750595, 9.897411, 1.693337, 4.373213, 0.489426]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 8, 8, 8, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 3, 6, 9, 0, 3, 6, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
