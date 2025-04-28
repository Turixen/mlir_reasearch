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
            [[8.425068, 8.860648, 3.272301, 2.976117, 0.454200, 6.563702, 1.504773, 8.125392, 2.554972, 6.221152], [6.673666, 0.078227, 7.750264, 9.872477, 0.786313, 3.410829, 3.643356, 0.311357, 8.235678, 5.018872], [2.382079, 5.242359, 4.090039, 2.409080, 8.639344, 6.947532, 1.794247, 3.117914, 6.626660, 0.929359], [5.192838, 2.397347, 6.467180, 1.396392, 9.478965, 0.985817, 5.069699, 8.069634, 8.757281, 4.185222], [2.381223, 0.526972, 2.117769, 1.195106, 9.020115, 3.039878, 2.824992, 6.845641, 7.602851, 1.441342], [2.276767, 9.114671, 4.553577, 6.104259, 7.977097, 3.482463, 0.013628, 7.927386, 9.564219, 8.010816], [9.877077, 6.078669, 3.054478, 8.848328, 7.521949, 2.410043, 8.939286, 3.479568, 0.851268, 0.045334], [9.838702, 3.058054, 5.531406, 3.691445, 4.775002, 9.357240, 3.760726, 1.195985, 7.207977, 2.797918], [5.374542, 4.443377, 8.420823, 4.792089, 0.997050, 7.613680, 0.359974, 9.514392, 9.237073, 2.006625], [9.318683, 6.931652, 0.943773, 7.728886, 3.253358, 1.104667, 6.822159, 1.670741, 8.005500, 4.499070]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[7.593320, 9.798747, 1.685989, 9.320613, 5.321962, 7.122157, 4.362641, 7.398221, 0.919536, 5.635050, 4.151428, 6.177630, 1.421604, 1.179634, 7.592130, 8.645371, 4.937009, 1.672073, 2.503001]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 5, 9, 9, 11, 15, 15, 15, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 9, 0, 3, 6, 9, 0, 4, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
