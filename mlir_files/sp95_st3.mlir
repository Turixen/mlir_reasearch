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
        %dense = arith.constant dense<[[4.190472, 7.323656, 9.803695, 6.883846, 7.067926, 9.517662, 9.748958, 5.844782, 9.188975, 4.410326], [2.147701, 7.253523, 1.254510, 3.540033, 9.741311, 6.649561, 6.271976, 3.340028, 4.244223, 1.231531], [8.557388, 0.018669, 2.627974, 0.826630, 3.885676, 2.281534, 8.412654, 2.855626, 1.991994, 9.303561], [2.230967, 3.292936, 1.552685, 9.254618, 5.306260, 2.893398, 1.602428, 9.401363, 4.305289, 9.796637], [3.039494, 7.514612, 8.269796, 4.487358, 2.804776, 1.322794, 0.307497, 9.864614, 5.219007, 1.245296], [4.623608, 3.365628, 3.636332, 1.199702, 3.379739, 2.510077, 6.589476, 9.284486, 3.551740, 1.016742], [3.839870, 4.998269, 4.014925, 0.043136, 7.601153, 9.435810, 2.297046, 8.198781, 4.509580, 1.748460], [4.676407, 6.466971, 0.324670, 1.740318, 0.981418, 6.814594, 7.533076, 0.246707, 3.064158, 5.377723], [0.073126, 4.304551, 8.734462, 2.524171, 9.665507, 7.325867, 0.294425, 4.804468, 9.217765, 2.981887], [7.379759, 6.351449, 2.664185, 0.102010, 6.160476, 3.014935, 1.114939, 8.859956, 0.009300, 0.062409]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[41.784208, 55.129031, 42.206048, 18.018173, 84.405442, 97.755094, 25.504969, 98.034731, 52.275989, 35.721668], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [35.991273, 30.976179, 12.993296, 0.497508, 30.044796, 14.703915, 5.437587, 43.210227, 0.045357, 0.304368], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [94.006656, 110.134546, 99.127579, 54.970684, 106.543734, 99.780532, 85.879264, 119.260889, 72.328525, 35.194100]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant false : i1
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
        %values = arith.constant dense<[1.901368, 9.776975, 4.877025, 7.862855, 8.273655]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 3, 3, 3, 3, 3, 3, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 6, 9, 0, 9]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
