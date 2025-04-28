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
            [[0.445728, 8.494958, 4.712517, 6.801934, 5.311835, 8.339598, 2.267113, 7.426608, 2.765664, 5.773048], [2.929366, 4.705937, 9.128603, 2.603990, 1.590912, 3.080244, 7.257991, 8.866179, 1.464854, 5.567823], [5.583884, 7.656531, 9.919725, 9.305790, 3.950718, 9.802596, 7.696445, 5.269279, 5.863815, 1.176018], [8.270987, 5.835365, 2.257722, 8.634219, 9.858509, 7.565028, 2.016626, 8.397693, 3.418784, 5.665237], [6.009448, 6.377089, 5.756117, 0.825644, 4.602154, 3.018694, 1.477112, 2.760772, 8.707002, 1.835648], [9.446996, 5.374628, 9.005179, 6.957028, 1.730389, 2.081654, 1.512404, 7.053306, 9.276735, 5.327534], [2.442170, 9.768468, 0.547368, 0.261799, 4.181962, 6.888969, 0.238080, 8.306563, 7.051787, 8.191184], [6.542141, 0.094136, 3.203266, 4.990415, 2.407011, 9.393840, 1.621874, 1.046823, 3.494022, 0.673772], [1.360985, 8.945333, 6.445254, 4.445818, 6.197891, 5.510344, 7.390181, 6.931598, 7.785185, 0.654556], [8.935630, 3.174188, 9.817598, 6.387740, 1.086164, 9.634021, 6.210791, 8.000924, 9.238411, 4.967057]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[9.998012, 5.295985, 0.449679, 1.544399, 8.590869]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 1, 1, 3, 3, 4, 4, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 3, 8, 5, 1]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
