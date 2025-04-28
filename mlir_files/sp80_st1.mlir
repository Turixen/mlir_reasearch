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
            [[7.445060, 8.463987, 1.704217, 0.122815, 9.284492, 6.100882, 3.221326, 1.238633, 9.691029, 6.456372], [7.949136, 7.161167, 3.131145, 0.112611, 2.696438, 2.377751, 5.208243, 6.342158, 5.599924, 5.411900], [5.163749, 7.823519, 1.133052, 5.677409, 5.430452, 8.841816, 6.589723, 1.433277, 6.689534, 9.344938], [2.986813, 1.019976, 2.138695, 2.815217, 9.093412, 1.326831, 9.904426, 7.818253, 9.190289, 6.118151], [0.062857, 3.287846, 3.740134, 3.440366, 3.329272, 2.917021, 9.874315, 1.992925, 5.615537, 6.971083], [0.179826, 8.408556, 7.025032, 6.685443, 0.057617, 1.851297, 4.261281, 9.089924, 6.611322, 1.956051], [8.838878, 2.173115, 1.291923, 6.189470, 7.569718, 3.912073, 3.560351, 5.011600, 7.329644, 9.371300], [6.653943, 8.787748, 2.521884, 4.896246, 8.379450, 9.628421, 8.103126, 3.203524, 3.252757, 1.135184], [6.390146, 5.308513, 8.295231, 1.535475, 0.673546, 7.189668, 3.157882, 1.834972, 0.437188, 1.392220], [7.201889, 2.596282, 8.873032, 8.424447, 9.648270, 2.941525, 6.000065, 4.964342, 6.088610, 9.380779]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[5.583767, 9.176948, 8.033535, 5.987161, 8.000564, 9.291471, 3.722719, 8.788672, 5.882672, 6.466461, 8.293784, 6.735737, 2.863611, 5.118585, 8.239940, 0.459735, 4.649202, 1.082492, 6.745444]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 1, 3, 6, 9, 9, 11, 12, 14, 17, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[9, 2, 4, 2, 4, 8, 1, 2, 6, 8, 9, 4, 1, 9, 2, 4, 5, 4, 7]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
