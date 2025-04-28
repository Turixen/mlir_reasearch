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
            [[1.561318, 1.739463, 1.549525, 0.263526, 1.527187, 9.690637, 3.927342, 7.024993, 9.352024, 3.707119], [4.043369, 6.044322, 9.543093, 9.415975, 3.860523, 6.515999, 9.190795, 0.272817, 4.889946, 3.367827], [8.015977, 8.520708, 1.165385, 6.163551, 2.833929, 8.036278, 8.618429, 2.076297, 8.953869, 6.112508], [4.332521, 1.770309, 3.786467, 8.774179, 6.117151, 4.663009, 5.946524, 5.640569, 1.529793, 4.740105], [9.571850, 2.692304, 2.246916, 4.205506, 8.231038, 0.796295, 3.504466, 1.387626, 6.154664, 9.426333], [2.537161, 7.008255, 8.637239, 5.096367, 1.587980, 4.908013, 1.078949, 4.866014, 7.527672, 6.211179], [9.200448, 2.794671, 0.457940, 4.181734, 2.192693, 7.615951, 4.035531, 9.801856, 6.400258, 2.418272], [3.033564, 8.570978, 1.926194, 6.877613, 1.653442, 0.013988, 5.547418, 2.848431, 1.613608, 4.871489], [6.549729, 5.493052, 0.082566, 0.706284, 7.936722, 9.229531, 1.633960, 2.776057, 3.553970, 7.400997], [1.950263, 0.267275, 9.977929, 0.343283, 4.633374, 5.930168, 3.301693, 1.915099, 8.021262, 1.711929]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[6.993038, 6.707216, 1.162106, 3.302623, 8.292778]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 2, 2, 2, 4, 4, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 3, 0, 9, 3]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
