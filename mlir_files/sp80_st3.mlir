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
        %dense = arith.constant dense<[[4.002027, 1.208753, 2.407235, 6.661697, 6.076056, 8.513040, 7.428243, 1.614606, 0.179713, 7.632134], [4.052972, 2.037384, 6.587536, 4.668267, 7.817793, 7.020952, 0.661835, 7.926843, 0.205136, 5.768303], [7.477903, 4.912135, 4.591136, 8.408120, 3.551450, 6.259846, 2.128498, 2.490231, 7.360782, 2.609779], [7.575556, 4.920921, 8.537252, 0.157665, 8.090992, 2.151411, 9.487694, 7.056881, 1.525571, 7.095750], [3.920694, 7.429689, 6.537328, 9.520278, 0.886835, 0.998253, 5.363863, 0.872349, 4.908980, 9.665200], [4.527639, 4.936132, 6.817233, 1.228263, 6.194152, 9.562507, 1.054552, 0.030430, 4.936095, 6.237141], [8.183164, 8.336059, 4.390410, 8.234251, 8.140161, 4.309931, 1.865556, 8.351977, 2.832521, 0.051665], [6.197415, 4.565434, 4.852449, 5.127881, 6.079557, 2.948113, 8.806504, 8.348320, 2.310608, 5.653099], [4.865835, 6.562829, 5.693330, 4.548016, 6.312050, 0.457390, 8.183778, 9.572725, 1.444960, 5.133943], [0.244676, 9.915496, 9.248214, 9.249578, 8.820743, 6.400376, 1.688922, 7.139659, 6.159309, 9.497922]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[79.941472, 97.431670, 97.762302, 90.724622, 121.249155, 104.763960, 63.197032, 78.036305, 51.998577, 93.917670], [11.261747, 7.315393, 12.691395, 0.234383, 12.027989, 3.198267, 14.104313, 10.490690, 2.267898, 10.548472], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [106.430341, 133.037295, 132.692593, 128.269831, 165.746294, 110.275090, 105.627491, 131.353684, 58.668652, 126.440687], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [24.550734, 93.913624, 94.102419, 91.698282, 98.681351, 73.058738, 42.369076, 75.302254, 53.881946, 101.666119], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [129.837195, 121.308361, 107.492211, 110.349663, 143.309253, 72.796924, 111.863458, 149.975450, 48.959387, 80.164268]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.467910, 2.198779, 3.396961, 4.062141, 3.206063, 1.486590, 4.643045, 5.429475, 5.544670, 5.495064, 1.870119, 1.462257, 0.489501, 8.106196, 0.773267, 3.602767, 7.284085, 6.377938, 1.291526]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 5, 6, 6, 10, 10, 10, 14, 14, 14, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 5, 6, 9, 3, 0, 3, 6, 9, 0, 3, 6, 9, 0, 3, 6, 7, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
