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
        %dense = arith.constant dense<[[4.715670, 2.481966, 1.470635, 0.198532, 7.080039, 6.959845, 5.514737, 1.059713, 9.931970, 8.175285], [5.074672, 3.674532, 0.887889, 3.789775, 5.681803, 0.355135, 5.017814, 7.376091, 9.505866, 7.253846], [2.224047, 1.167016, 4.538476, 8.691964, 3.323609, 5.793907, 6.078163, 3.840180, 9.475137, 6.103155], [5.058276, 1.914272, 0.273752, 5.260954, 6.471984, 2.893206, 7.848191, 8.546347, 7.569449, 6.424976], [7.206452, 3.751273, 4.015701, 9.467937, 4.279111, 9.418754, 1.042431, 3.259486, 0.632419, 8.000850], [2.256572, 7.873493, 9.299527, 5.477117, 6.766619, 6.497074, 4.600805, 8.767963, 8.147572, 5.676108], [8.388757, 5.519538, 1.534637, 8.936518, 6.733645, 3.587356, 8.715327, 0.159206, 1.314142, 8.976148], [5.943893, 2.763976, 1.495639, 8.701334, 2.415153, 1.918960, 0.853704, 7.831188, 2.728890, 4.806971], [5.208967, 9.898919, 3.555604, 9.337360, 2.408247, 8.421100, 6.735988, 3.648413, 7.090807, 4.642818], [1.985736, 4.117785, 7.061251, 0.323922, 0.460067, 5.740771, 7.103508, 7.898159, 0.633020, 3.540868]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[121.053205, 107.952481, 74.254927, 198.743300, 107.800672, 135.008619, 168.188303, 56.566552, 148.942976, 164.314426], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [34.731228, 18.165787, 50.088999, 99.384463, 39.283241, 72.290050, 58.651985, 42.113227, 89.501563, 72.414204], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [121.972664, 141.054898, 53.783877, 176.253036, 83.655851, 118.812420, 145.482514, 42.201776, 93.602021, 127.844488], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [170.901218, 139.372976, 81.952172, 202.532815, 137.828466, 204.979038, 143.732888, 64.887548, 138.084430, 207.021304], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [74.975434, 61.281067, 56.706529, 96.091931, 92.847486, 128.408214, 111.666324, 48.087321, 172.105349, 130.043969], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant "false" : i1
        %flag = scf.for %i = %c0 to %rows step %c1 iter_args(%f_iter = %false) -> (i1) {
            %flag_row = scf.for %j = %c0 to %cols step %c1 iter_args(%f_in = %f_iter) -> (i1) {
                %cmp_c = tensor.extract %computed[%i, %j] : tensor<10x10xf64>
                %cmp_e = tensor.extract %expected[%i, %j] : tensor<10x10xf64>
                %neq = arith.cmpf une, %cmp_c, %cmp_e : f64
                %new_f = arith.or %f_in, %neq : i1
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
        %values = arith.constant dense<[1.562951, 9.265655, 8.023035, 4.947679, 9.316165, 1.944319, 1.650986, 8.221550, 9.470632, 6.338750, 2.046159, 8.310056, 5.319173, 6.133988, 8.383875, 7.064767, 0.311339, 0.207791, 3.021850]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 6, 6, 9, 9, 14, 14, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 6, 8, 2, 4, 2, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
