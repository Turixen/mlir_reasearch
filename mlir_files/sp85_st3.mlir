// Sparse-Dense Matrix Multiplication using CSR
#CSR = #sparse_tensor.encoding<{ 
   map = (d0, d1) -> (d0: compressed, d1: dense) 
}>

module {
    func.func @sparse_dense_matmul(%sparse: tensor<10x10xf64, #CSR>,%dense: tensor<10x10xf64>,%init: tensor<10x10xf64>
    ) -> tensor<10x10xf64> {
        %res = linalg.matmul ins(%sparse, %dense: tensor<10x10xf64, #CSR>, tensor<10x10xf64>) 
            outs(%init: tensor<10x10xf64>) -> tensor<10x10xf64>
        return %res : tensor<10x10xf64>
    }

    func.func @main() -> i32 {
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %rows = arith.constant 10 : index
        %cols = arith.constant 10 : index
        %zero_f64 = arith.constant 0.0 : f64

        %init = tensor.empty() : tensor<10x10xf64>
        %sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %dense = arith.constant dense<[[6.981683, 9.029196, 9.222427, 3.373911, 2.326856, 5.012368, 9.417109, 2.368028, 9.873106, 3.085119], [4.726455, 5.553582, 0.534434, 3.083016, 2.754422, 2.014943, 1.237085, 3.824674, 3.793017, 9.769615], [7.236952, 6.321787, 8.536323, 1.029891, 9.806257, 2.449048, 5.432356, 7.032913, 9.778168, 2.509620], [5.788676, 2.231379, 0.252633, 0.754190, 8.950658, 4.805699, 7.226795, 4.160788, 8.445255, 0.124860], [5.343287, 3.413328, 6.501540, 0.665393, 8.114689, 5.387714, 3.425118, 8.432512, 7.968727, 7.962266], [1.407445, 5.939735, 2.281039, 9.175039, 1.555581, 1.630349, 8.983953, 2.892969, 6.841995, 5.735429], [7.708633, 4.956300, 0.425217, 0.063210, 3.301571, 9.757202, 8.676773, 9.971779, 9.691785, 9.080203], [1.296532, 4.018648, 2.611257, 2.068223, 8.644104, 6.230786, 3.228862, 2.051407, 1.061833, 2.267057], [7.520319, 9.754472, 6.184631, 8.422620, 1.428030, 2.614332, 8.722817, 9.297716, 6.291475, 4.694359], [8.398203, 6.993216, 0.985926, 8.388943, 9.414756, 0.480087, 0.244130, 6.718321, 6.548524, 5.343789]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[207.660694, 190.396093, 97.309714, 112.848181, 139.781595, 129.173090, 158.624792, 167.250359, 232.236237, 153.036395], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [111.041600, 86.358017, 21.754216, 49.287610, 77.034782, 81.857142, 79.072919, 112.226958, 120.221590, 99.498484], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [193.254629, 158.632857, 91.959875, 82.606913, 171.991468, 131.296635, 189.515597, 135.215411, 243.013950, 90.984848], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [152.692808, 138.964441, 70.394959, 99.875209, 127.675747, 70.875903, 99.824622, 109.546285, 165.123983, 90.979731]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant "false" : i1
        %flag = scf.for %i = %c0 to %rows step %c1 iter_args(%f_iter = %false) -> (i1) {
            %flag_row = scf.for %j = %c0 to %cols step %c1 iter_args(%f_in = %f_iter) -> (i1) {
                %cmp_c = tensor.extract %computed[%i, %j] : tensor<10x10xf64>
                %cmp_e = tensor.extract %expected[%i, %j] : tensor<10x10xf64>
                %neq = arith.cmpf une, %cmp_c, %cmp_e : f64
                %new_f = arith.ori %f_in, %neq : i1
                scf.yield %new_f : i1
            }
            scf.yield %flag_row : i1
        }

        %zero_i32 = arith.constant 0 : i32
        %one_i32 = arith.constant 1 : i32
        %status = scf.if %flag -> (i32) {
            scf.yield %one_i32 : i32
        } else {
            scf.yield %zero_i32 : i32
        }
        return %status : i32
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[9.141304, 0.064767, 8.033145, 9.709162, 1.459037, 7.382411, 5.232877, 8.959559, 9.919114, 3.706366, 5.324030, 6.491198, 2.120702, 2.437806, 9.085886]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 7, 7, 7, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 6, 9, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
