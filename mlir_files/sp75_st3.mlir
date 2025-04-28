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
            [[1.529067, 4.970007, 1.340497, 6.830362, 0.190685, 9.394034, 4.582746, 8.632822, 4.673089, 5.049255], [1.779263, 8.636937, 1.761363, 8.301419, 6.892182, 1.718873, 4.758447, 2.937525, 3.934546, 8.533370], [7.315006, 6.412300, 0.654912, 1.057985, 9.376777, 0.229394, 0.558057, 0.194879, 1.620705, 1.356832], [4.721385, 4.390911, 8.847832, 5.733287, 9.096351, 7.039459, 4.564639, 7.744533, 0.911490, 8.992096], [3.939978, 5.766537, 0.341727, 3.885534, 8.727283, 4.100875, 2.281646, 8.492498, 6.848895, 2.165773], [2.473782, 7.723779, 6.248528, 9.969531, 0.831733, 4.722956, 0.294670, 5.347887, 8.295587, 8.342624], [9.917315, 9.793641, 7.721641, 1.817202, 3.224208, 8.773145, 2.553204, 5.076892, 9.084243, 1.751949], [2.416879, 4.148874, 7.188917, 9.886624, 4.866832, 5.896685, 6.596970, 9.399898, 4.342587, 9.854650], [6.905025, 3.536938, 4.115922, 5.965060, 4.466232, 3.619042, 5.376925, 4.874104, 1.725588, 0.882070], [2.629126, 1.537813, 7.064539, 7.919903, 4.248790, 6.656302, 7.678243, 5.019210, 8.365115, 5.877660]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[1.727133, 0.310063, 9.794852, 7.817869, 3.096501, 0.293120, 6.627963, 7.822784, 5.936836, 2.886315, 2.609896, 6.957454, 4.386281, 8.672283, 2.866987, 8.216342, 3.092256, 3.345637, 2.113120, 4.743311, 3.343103, 5.824396, 5.475077, 0.478269, 5.188753]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 6, 7, 12, 13, 13, 19, 21, 21, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 8, 9, 1, 6, 0, 2, 3, 6, 9, 9, 0, 3, 5, 6, 7, 9, 3, 7, 0, 3, 6, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
