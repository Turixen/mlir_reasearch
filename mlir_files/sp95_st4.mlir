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
        %dense = arith.constant dense<[[8.869075, 4.581280, 9.332219, 3.434249, 8.354613, 5.912212, 4.115415, 6.795935, 8.084459, 3.595877], [9.448680, 2.944678, 8.225913, 3.012281, 1.770781, 5.804538, 2.428412, 4.590065, 7.108010, 3.940882], [9.903150, 7.557767, 1.995189, 0.159970, 5.397498, 5.707127, 3.927676, 1.074768, 8.824829, 1.630724], [9.968355, 2.978991, 1.556662, 6.233335, 4.441304, 6.009332, 7.628730, 1.303965, 1.347917, 4.698886], [6.495518, 3.517633, 7.179888, 1.400732, 0.381703, 5.951838, 6.216420, 8.241058, 4.357821, 7.014065], [6.758056, 7.397443, 3.537709, 6.533421, 7.320187, 1.893541, 4.816282, 9.180124, 4.979413, 6.017957], [9.570924, 9.220785, 7.112811, 4.330531, 1.407299, 2.288745, 2.048968, 0.689014, 5.953439, 8.481030], [9.372543, 5.138522, 2.009492, 6.853412, 5.955344, 5.804393, 4.151961, 0.827221, 6.521776, 3.479633], [9.438234, 3.578396, 6.389379, 3.755239, 5.336647, 6.635941, 3.300159, 1.556108, 7.693847, 4.243260], [1.426092, 5.374083, 0.675628, 6.821724, 5.188928, 6.436692, 3.930610, 4.547837, 6.899218, 8.998387]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[18.277642, 6.929753, 12.373372, 7.272220, 10.334700, 12.850852, 6.390934, 3.013485, 14.899543, 8.217297], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [79.262221, 31.510281, 57.506252, 29.899488, 40.265703, 57.643849, 33.170813, 22.984242, 63.316769, 41.296458], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [26.064357, 11.927886, 23.041240, 8.074798, 8.355019, 21.011429, 16.764785, 18.202723, 19.429569, 19.657393], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.936553, 1.382969, 7.446215, 1.939356, 1.426881]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 1, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[8, 4, 8, 4, 8]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
