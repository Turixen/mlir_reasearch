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
        %dense = arith.constant dense<[[2.627069, 2.146534, 4.515778, 7.606974, 3.637106, 9.015708, 8.082123, 2.040802, 7.251140, 3.314977], [9.354709, 0.061071, 2.302051, 3.491594, 6.454318, 0.928030, 0.628218, 5.542089, 2.659761, 2.742305], [1.150094, 5.651096, 3.210537, 6.119298, 1.508008, 9.156353, 7.862678, 6.082291, 0.629000, 4.876400], [7.149793, 4.300314, 0.501723, 4.332631, 9.644357, 1.412830, 9.072191, 2.480809, 0.588888, 1.215271], [9.787295, 3.111337, 5.956813, 9.392088, 1.661854, 4.321464, 7.263310, 3.411759, 6.704389, 8.085626], [0.341039, 9.368697, 5.050700, 2.237192, 8.067735, 8.045114, 6.442250, 9.863362, 8.434681, 8.899699], [5.912935, 0.663515, 8.076043, 8.263359, 2.512503, 2.460325, 9.047499, 7.107306, 7.259906, 3.904922], [5.763084, 2.933678, 4.788886, 1.405617, 8.065138, 8.857374, 1.513730, 9.931784, 6.950925, 1.762023], [5.758683, 5.668783, 7.078212, 9.337804, 7.480984, 4.281570, 8.413881, 1.791410, 7.518061, 0.705394], [2.805938, 0.631997, 4.696345, 9.930344, 5.069991, 9.706859, 5.614296, 3.536818, 9.731374, 2.365691]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [37.334667, 62.431735, 50.353954, 59.160588, 51.377893, 120.722401, 74.621620, 99.491334, 38.530403, 50.204649], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [71.552106, 33.248298, 45.018739, 114.901074, 104.522723, 93.316226, 107.068081, 46.830273, 88.975928, 30.054816], [1.747600, 1.051111, 0.122634, 1.059010, 2.357338, 0.345333, 2.217485, 0.606376, 0.143940, 0.297045], [102.984714, 21.748455, 49.591766, 35.735909, 99.411467, 66.607517, 16.954987, 103.938947, 66.539665, 30.363754], [0.098213, 2.698024, 1.454515, 0.644273, 2.323369, 2.316855, 1.855258, 2.840479, 2.429044, 2.562961], [30.545801, 54.511206, 53.417492, 94.511270, 33.234060, 120.512601, 108.024254, 57.123857, 52.003627, 59.521645], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [63.473074, 45.960149, 64.177167, 55.039223, 85.945189, 74.769858, 51.084255, 68.832966, 79.410055, 14.144426]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[8.572779, 4.767441, 6.280711, 0.261965, 8.582650, 0.244427, 6.708965, 6.664733, 0.315156, 0.287983, 5.905267, 7.011023, 0.712038, 6.031176, 4.986365]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 0, 2, 2, 5, 6, 9, 10, 13, 13, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 7, 3, 4, 9, 3, 1, 7, 8, 5, 0, 2, 4, 7, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
