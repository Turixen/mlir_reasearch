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
        %dense = arith.constant dense<[[6.579937, 1.200519, 0.608429, 5.911838, 3.591945, 8.489979, 0.068738, 2.439480, 7.245227, 9.641119], [9.940918, 8.791214, 8.878023, 3.497207, 9.647377, 5.079104, 7.485306, 0.991373, 3.664214, 4.508925], [2.113848, 4.063938, 9.036795, 8.682008, 8.544521, 6.876583, 2.121828, 8.654329, 8.511372, 3.966643], [4.818167, 4.628548, 1.955442, 9.033276, 2.562450, 6.111814, 0.373266, 6.263341, 4.730487, 7.820215], [4.518737, 2.826291, 8.039530, 3.458315, 6.064680, 2.190810, 9.355796, 7.479305, 0.832460, 6.926769], [5.621533, 3.989118, 6.959562, 9.033074, 6.292099, 1.151476, 6.229693, 5.984406, 9.103961, 3.838762], [6.693610, 8.459913, 8.779405, 7.915037, 8.013878, 1.349615, 2.354159, 6.795333, 8.636312, 6.808358], [6.800178, 9.115150, 8.837458, 8.180440, 4.241032, 2.747809, 1.128725, 7.387180, 7.705697, 5.139951], [2.329895, 0.808608, 2.018879, 5.335229, 3.558782, 2.637047, 3.322372, 8.529099, 2.008064, 5.961432], [1.616153, 4.627204, 7.722127, 4.883915, 0.642244, 4.651673, 3.107045, 2.325110, 7.302734, 3.516494]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[36.248055, 35.085045, 85.174507, 64.617510, 74.972964, 50.789495, 55.533924, 81.605106, 52.007479, 59.043755], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [126.689245, 92.185629, 143.368373, 209.914257, 174.320384, 166.050815, 56.630297, 198.482217, 197.478279, 200.166301], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [86.297992, 34.405409, 79.025573, 71.927749, 80.647721, 77.421816, 87.671807, 86.096758, 56.402896, 129.296726], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [56.395345, 56.622256, 136.349348, 128.309562, 130.414636, 89.594968, 87.463089, 167.491882, 93.830849, 106.887424], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [28.822028, 39.711500, 59.097426, 57.837390, 56.291446, 30.197927, 16.898894, 56.889725, 56.818012, 38.450620], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[0.583466, 5.147734, 4.764021, 8.987926, 9.167894, 4.468099, 7.838126, 6.713812, 9.321527, 9.151778, 5.223695, 5.770806, 3.525187, 2.927991, 0.760329]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 7, 7, 9, 9, 12, 12, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 0, 2, 6, 8, 0, 4, 2, 4, 8, 2, 6, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
