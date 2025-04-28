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
            [[9.816850, 7.594246, 5.045599, 6.318018, 7.470231, 5.132564, 0.387297, 5.785901, 8.890054, 6.720418], [8.688526, 5.351868, 2.271291, 3.290943, 7.224962, 0.408837, 1.958488, 2.423419, 7.673512, 8.098108], [3.176029, 7.373005, 8.544502, 8.734723, 8.827461, 7.638754, 1.486315, 1.160048, 3.106747, 9.670109], [6.066878, 9.429275, 0.532511, 9.639202, 2.515132, 3.672861, 4.289782, 9.884206, 8.868472, 1.939894], [5.486154, 2.221244, 7.423524, 3.156161, 6.688215, 1.746091, 6.066267, 2.634570, 9.532704, 1.403633], [0.898385, 9.051777, 8.025861, 6.352959, 0.924330, 5.523712, 9.435286, 5.154776, 1.119990, 1.167177], [6.647591, 8.116351, 3.651113, 6.073782, 8.429618, 5.328723, 0.359946, 5.944492, 5.346627, 8.363317], [8.661787, 5.169458, 1.372997, 7.148192, 2.124395, 3.603749, 8.894269, 0.056497, 8.752355, 1.122141], [8.150920, 6.633392, 6.140038, 6.691989, 5.329832, 8.844994, 5.554942, 9.378391, 1.797469, 0.220708], [7.821891, 9.512702, 1.517150, 7.523766, 2.234791, 3.811467, 4.193339, 9.620924, 9.174100, 2.959883]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[9.236544, 2.020637, 7.954991, 3.032010, 2.015400, 7.698932, 9.532086, 5.494005, 9.090721]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 4, 4, 4, 7, 7, 7, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 6, 6, 9, 0, 6, 9, 0, 9]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
