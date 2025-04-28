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
            [[4.055218, 2.118846, 5.828031, 2.181772, 6.355388, 4.218765, 9.507902, 2.005854, 5.407529, 9.238484], [8.507508, 6.511225, 6.418990, 5.611370, 6.740082, 0.972300, 4.474603, 9.018171, 1.455978, 4.729308], [2.354039, 4.779068, 5.131718, 5.104133, 2.217139, 0.118246, 4.050756, 6.932968, 9.478359, 7.808965], [5.637370, 9.960473, 8.830478, 5.037180, 8.471604, 4.427119, 3.884668, 3.079473, 6.157825, 4.431112], [8.003182, 5.357407, 4.719641, 2.240426, 6.073277, 9.485974, 2.425742, 8.301634, 8.780401, 4.519256], [8.014199, 9.324252, 2.391608, 4.016627, 9.789315, 5.674642, 4.113678, 0.815980, 4.704284, 2.748513], [2.555302, 4.310368, 1.315877, 3.732301, 9.972225, 6.336346, 3.232845, 0.134071, 6.851669, 2.153668], [0.582762, 3.363963, 1.094138, 9.639681, 5.853749, 6.118880, 7.402715, 2.999257, 7.777034, 2.447748], [9.959411, 6.142823, 9.235550, 2.417296, 2.111042, 4.048851, 7.447722, 5.376574, 4.524165, 5.466531], [3.024679, 9.537056, 3.694285, 0.928717, 8.639242, 0.103444, 1.405782, 3.324470, 8.619058, 3.376732]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[6.929107, 7.100427, 4.051244, 6.292167, 3.324674]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 4, 4, 4, 4, 5, 5, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 4, 6, 8, 0]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
