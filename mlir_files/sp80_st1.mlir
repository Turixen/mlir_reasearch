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
        %dense = arith.constant dense<[[9.808167, 3.125140, 2.437775, 8.217404, 0.962894, 1.106980, 7.474062, 7.620825, 3.414001, 9.637650], [8.780437, 8.629532, 0.308890, 8.433609, 7.260994, 5.331987, 6.846923, 3.434121, 1.262193, 1.169169], [1.515971, 9.889918, 6.905981, 3.664940, 4.789936, 6.753361, 2.770047, 4.771224, 6.798368, 9.502325], [1.024498, 1.014823, 8.360419, 4.130127, 9.486073, 1.225524, 0.327393, 9.503877, 4.990260, 8.333657], [0.161206, 7.746030, 8.546390, 4.286363, 9.803156, 3.461735, 9.883803, 1.699462, 1.542336, 7.784320], [3.587962, 9.303030, 4.639164, 7.171985, 6.830154, 4.564184, 1.844978, 7.481410, 3.182380, 8.567366], [2.026758, 6.575962, 7.355149, 8.619380, 9.905622, 3.254008, 7.497239, 7.535009, 5.486316, 7.956713], [9.624264, 3.328164, 2.061635, 0.509145, 9.353869, 0.362308, 2.210214, 5.825015, 8.388585, 6.515187], [1.141056, 2.303559, 2.153623, 7.233524, 9.887333, 8.753197, 8.635288, 1.349427, 3.958074, 8.735942], [0.331010, 2.570086, 1.470435, 5.286118, 0.133781, 7.203223, 3.593511, 8.048871, 1.439284, 9.766655]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [2.631886, 2.607033, 21.477522, 10.610100, 24.369273, 3.148313, 0.841057, 24.415011, 12.819741, 21.408771], [93.342497, 87.995217, 127.831524, 158.797484, 146.685199, 44.127037, 123.762198, 172.005992, 100.280433, 184.194378], [84.883527, 27.046124, 21.097411, 71.116478, 8.333243, 9.580220, 64.683316, 65.953460, 29.546038, 83.407813], [23.045083, 7.342769, 5.727750, 19.307458, 2.262397, 2.600940, 17.560915, 17.905747, 8.021473, 22.644441], [169.278876, 185.826219, 106.705216, 146.160002, 249.458561, 88.871465, 178.204704, 121.278859, 112.619136, 148.308458], [7.773851, 41.966164, 38.145140, 46.410777, 71.196234, 56.350454, 62.621270, 17.098270, 31.470212, 69.597098], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [43.839300, 59.122771, 40.698630, 58.780027, 73.964132, 33.404824, 26.979589, 63.849425, 32.307513, 58.313305], [9.525692, 45.523701, 49.337963, 30.903494, 54.979046, 20.089715, 61.157084, 16.093834, 11.522339, 51.469031]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.568953, 7.076059, 5.106166, 9.230541, 8.654372, 2.349581, 9.292929, 6.696457, 4.053274, 8.144870, 1.612099, 2.056785, 4.380494, 2.746311, 2.798296, 3.318384, 0.514575, 0.880444, 5.521821]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 0, 1, 4, 5, 6, 10, 13, 13, 17, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 0, 3, 6, 0, 0, 1, 4, 6, 7, 2, 4, 8, 1, 3, 5, 7, 0, 4]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
