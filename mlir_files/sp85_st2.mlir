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
        %dense = arith.constant dense<[[9.453299, 0.607005, 8.989557, 1.905362, 8.655996, 1.954012, 1.757993, 8.133333, 2.031338, 5.861668], [5.156813, 3.805013, 5.629875, 4.793973, 3.088393, 0.683170, 7.693554, 5.863848, 5.511267, 5.713539], [2.978763, 3.906378, 4.842146, 7.691012, 5.415859, 9.365456, 7.146126, 0.704607, 4.624202, 8.417822], [9.382902, 9.564968, 3.416875, 6.669604, 4.872423, 2.598000, 3.890122, 1.105181, 0.660932, 2.874952], [3.780239, 5.530779, 2.941898, 9.370224, 0.658554, 8.514254, 1.909656, 8.587207, 4.082722, 5.555014], [3.276160, 9.206037, 9.956388, 0.533352, 7.024050, 9.714922, 0.676039, 7.374620, 2.633703, 9.928285], [6.348315, 9.503683, 0.310966, 7.174767, 8.012937, 4.115828, 4.764100, 9.007889, 6.506699, 7.988438], [6.848270, 7.430706, 1.343036, 4.780866, 4.956468, 4.486588, 5.873880, 6.083046, 1.156582, 4.740906], [6.733469, 7.488841, 4.983294, 5.899599, 7.811811, 7.137170, 7.009473, 3.894734, 7.397572, 1.846759], [2.852772, 3.985785, 6.679792, 8.937285, 7.274334, 4.190426, 6.910370, 8.252982, 8.041869, 1.718159]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[78.669905, 112.285573, 64.623022, 166.639079, 77.476246, 161.658311, 90.177657, 111.053108, 94.889255, 142.892523], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [29.459021, 34.308289, 19.028501, 26.830271, 34.586398, 29.573314, 29.500559, 20.412694, 32.068798, 12.028918], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [75.496624, 102.153800, 24.219374, 80.215902, 90.786338, 62.930453, 64.452924, 84.785709, 79.533836, 67.661333], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [112.506206, 100.518425, 73.901860, 110.549443, 129.011912, 97.007504, 82.751546, 117.748902, 87.583330, 130.055903], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [111.540073, 69.822419, 93.460262, 62.817513, 116.751067, 74.073242, 71.866292, 79.106999, 76.808858, 48.486085], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.947193, 8.505584, 3.598429, 0.632163, 3.779011, 0.398247, 7.228041, 4.173966, 4.648768, 4.580531, 1.155262, 7.037755, 0.871860, 5.474070, 8.879829]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 5, 5, 8, 8, 13, 13, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 4, 6, 6, 8, 4, 6, 8, 0, 2, 4, 6, 8, 0, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
