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
        %dense = arith.constant dense<[[8.581493, 0.779010, 0.373168, 1.104419, 2.526358, 5.969900, 0.118117, 2.595449, 2.231108, 2.396947], [8.547730, 9.302431, 5.319270, 0.992480, 9.273950, 9.904986, 0.508734, 3.408942, 2.629596, 4.166601], [0.448174, 4.068219, 4.361881, 9.681160, 7.902586, 1.475896, 3.744036, 0.276675, 9.080377, 0.026679], [2.318218, 2.834460, 2.842793, 2.655454, 0.749977, 0.679133, 5.800535, 0.594340, 9.987830, 7.373379], [0.473681, 0.982157, 8.117270, 4.883356, 3.607585, 1.310328, 9.940124, 1.537149, 9.376969, 9.776871], [2.073366, 9.644726, 4.880465, 6.997306, 3.326307, 6.877799, 3.651775, 4.464227, 0.072998, 8.857056], [9.573399, 5.950965, 9.703460, 4.872811, 0.252404, 6.434159, 7.285674, 4.914896, 3.505533, 2.347531], [2.998020, 3.119951, 4.261243, 7.034105, 5.997963, 8.983549, 9.681087, 0.284628, 5.392118, 3.471602], [7.011638, 7.279352, 4.066520, 9.284481, 9.255247, 9.712768, 9.848326, 9.361730, 4.160215, 4.506461], [1.979996, 8.753021, 1.756197, 2.073566, 2.083031, 2.892829, 3.932247, 3.760754, 3.453668, 9.671754]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[38.850527, 82.643982, 29.366293, 29.981961, 22.305839, 35.004864, 56.708468, 36.725525, 70.592473, 108.257201], [2.203163, 0.199999, 0.095805, 0.283542, 0.648603, 1.532678, 0.030325, 0.666341, 0.572802, 0.615378], [46.033201, 75.123900, 58.936478, 128.244118, 112.707727, 67.337295, 90.692943, 56.294480, 102.560556, 34.152634], [77.025255, 37.267054, 29.232644, 33.143245, 25.569582, 59.579230, 34.016274, 31.347733, 53.687632, 59.946991], [46.865832, 51.875767, 63.286438, 89.482629, 65.162422, 94.330925, 138.939934, 7.202332, 127.090329, 88.760492], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [137.246888, 123.401238, 102.680232, 66.629385, 29.624134, 102.712012, 102.803547, 81.501019, 84.605040, 115.469588], [4.111997, 8.526054, 70.465620, 42.392174, 31.317265, 11.374895, 86.289720, 13.343911, 81.401003, 84.872535], [31.853862, 2.891628, 1.385172, 4.099521, 9.377653, 22.159822, 0.438440, 9.634112, 8.281706, 8.897289], [166.192861, 132.676854, 95.766944, 69.918652, 43.772310, 124.244625, 103.881414, 91.462069, 103.654258, 142.474901]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.203680, 3.967786, 0.411372, 7.770085, 0.256734, 7.454882, 1.107351, 5.722635, 6.660719, 3.577466, 1.746003, 0.826473, 0.020572, 7.355890, 9.944321, 4.276056, 2.011186, 8.510545, 7.280179, 8.680950, 3.711925, 8.648753, 2.980791, 7.108858, 8.589707]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 4, 5, 8, 13, 15, 15, 19, 20, 21, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 2, 3, 8, 0, 3, 5, 6, 9, 3, 7, 0, 3, 6, 9, 4, 0, 0, 3, 6, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
