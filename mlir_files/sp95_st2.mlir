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
        %dense = arith.constant dense<[[9.538063, 8.315620, 9.074525, 3.091347, 2.951315, 7.702464, 6.304897, 7.839095, 2.522234, 3.557530], [3.775355, 3.303287, 6.110678, 7.254820, 0.406797, 6.863408, 3.829766, 9.997933, 7.392518, 1.199925], [2.058266, 0.299880, 8.667970, 6.469585, 7.550124, 0.040744, 3.058631, 8.998394, 0.756742, 3.865433], [7.472977, 1.576762, 5.905378, 9.691429, 1.278035, 6.747665, 9.050068, 7.898239, 8.251018, 7.829359], [0.853928, 9.181157, 2.324336, 5.738898, 1.091309, 4.827649, 6.317059, 7.475219, 5.315202, 7.018394], [5.666790, 6.289888, 5.711964, 9.353177, 2.985087, 5.209685, 2.015722, 8.278201, 0.004675, 8.436589], [3.706617, 4.379094, 2.380805, 1.103011, 5.030767, 5.198194, 2.556664, 7.826928, 4.445943, 0.404037], [1.364919, 5.972044, 4.910459, 5.509404, 2.407829, 7.773289, 0.894848, 2.946532, 6.989680, 0.785271], [3.926564, 1.942961, 6.921057, 8.136267, 1.651715, 4.548045, 9.689986, 4.333061, 1.450005, 9.169477], [1.074770, 7.701041, 9.459338, 4.540432, 3.207568, 1.103571, 9.003396, 6.994493, 1.212795, 0.435043]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[43.340470, 37.785752, 41.234175, 14.046923, 13.410625, 34.999600, 28.649130, 35.620445, 11.460903, 16.165233], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [17.517134, 20.695195, 11.251468, 5.212727, 23.774945, 24.566188, 12.082562, 36.989345, 21.011119, 1.909442], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [34.385311, 17.014702, 60.608389, 71.250102, 14.464235, 39.827682, 84.856173, 37.945053, 12.697843, 80.298027], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [46.124646, 43.561612, 47.462684, 41.977644, 47.690963, 60.798829, 60.122698, 81.347731, 42.107587, 40.471261], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.543949, 4.725908, 8.757100, 8.148629, 4.054638]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 2, 2, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 6, 8, 6, 8]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
