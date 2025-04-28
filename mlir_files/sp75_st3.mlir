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
            [[7.152516, 5.168765, 6.911405, 5.856019, 1.391222, 5.652876, 7.217887, 4.333640, 7.918876, 5.145884], [6.364124, 1.468263, 1.437439, 6.029476, 2.171645, 0.724562, 3.056539, 1.974218, 2.032398, 9.543937], [3.473353, 4.623668, 6.433226, 6.823488, 1.538334, 9.435044, 3.118578, 8.291101, 0.806436, 4.341381], [9.835670, 4.967419, 1.375946, 2.994409, 0.741561, 1.525845, 8.241889, 7.353196, 2.080319, 8.757010], [6.156495, 7.912265, 2.607644, 1.525387, 6.541773, 5.844581, 2.921486, 9.970677, 4.358549, 0.540000], [3.565317, 8.782652, 3.356008, 7.431682, 6.049543, 3.644561, 0.318843, 2.278357, 9.867999, 4.592836], [2.078442, 9.399596, 0.876815, 4.810318, 8.745164, 0.511661, 4.718976, 5.081902, 8.109665, 6.806081], [9.585258, 8.933818, 5.211318, 3.949716, 4.043810, 1.146159, 8.239534, 4.846832, 1.107116, 3.394592], [8.396648, 5.112670, 1.345025, 5.870283, 8.551096, 6.358633, 8.129134, 8.702903, 6.536686, 0.837632], [2.909528, 2.787623, 7.852552, 8.758892, 4.368171, 5.158230, 8.978755, 0.647205, 1.277673, 6.705286]]
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
        %values = arith.constant dense<[5.700799, 9.331015, 1.729496, 7.055074, 2.538784, 1.895033, 9.369749, 1.184624, 4.463453, 3.730991, 2.469163, 0.476723, 3.646717, 1.364261, 3.631797, 0.625269, 8.414975, 2.510285, 7.833730, 2.798520, 5.949817, 7.826827, 5.714366, 6.758480, 3.978110]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 6, 11, 13, 15, 20, 20, 20, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 2, 3, 0, 2, 3, 6, 9, 6, 9, 6, 8, 0, 3, 4, 6, 9, 0, 3, 6, 7, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
