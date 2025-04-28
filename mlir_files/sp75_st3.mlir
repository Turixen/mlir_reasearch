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
        %dense = arith.constant dense<[[7.043413, 6.031857, 2.193869, 4.420579, 0.077735, 2.248340, 4.740686, 1.489370, 0.213545, 8.174530], [1.007278, 7.387459, 2.899312, 9.699435, 8.151717, 7.716388, 2.072435, 8.285391, 9.471094, 8.431169], [1.486095, 0.676706, 4.153394, 8.306253, 2.483450, 6.091002, 6.344305, 1.089777, 6.328007, 0.869130], [9.779943, 7.666843, 4.135840, 9.386955, 5.229517, 2.454998, 4.430476, 9.482417, 9.074843, 1.008789], [0.453652, 1.940563, 0.100330, 5.004724, 6.906913, 9.808146, 5.543148, 5.559035, 6.441825, 1.113914], [4.955900, 0.324753, 5.528739, 9.264831, 2.268022, 0.203669, 2.478176, 6.532424, 9.933721, 5.789116], [0.277379, 3.693029, 9.280831, 1.998233, 5.933662, 0.136434, 2.484955, 3.075743, 1.619499, 3.149402], [2.207802, 1.132289, 3.439638, 8.923452, 1.169200, 8.286422, 3.961211, 4.100881, 4.399312, 4.348947], [4.046858, 4.188271, 5.523492, 4.789808, 4.601870, 2.102534, 6.116683, 3.438410, 5.703048, 1.421870], [8.056568, 8.387277, 1.086290, 2.239991, 0.717079, 6.216006, 8.300652, 9.265920, 2.865342, 8.884523]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[112.658931, 122.851261, 73.135148, 64.066844, 38.048539, 58.733892, 104.274064, 90.855830, 33.074832, 136.125990], [2.520967, 13.305356, 29.341253, 6.728419, 18.763837, 1.701645, 9.497268, 11.548639, 5.668264, 11.701604], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [158.780706, 172.461552, 123.257357, 116.889854, 99.844210, 78.043235, 134.014045, 188.001201, 114.668129, 118.040620], [47.495846, 62.022163, 75.669772, 142.191557, 117.481209, 142.475227, 137.229272, 88.384591, 148.514964, 34.832053], [78.195842, 81.405649, 10.543371, 21.741022, 6.959861, 60.331624, 80.564883, 89.933627, 27.810580, 86.231851], [143.040256, 127.067047, 65.152192, 121.850218, 56.956571, 75.926642, 112.751055, 132.481721, 104.318100, 85.571401], [13.896199, 7.126777, 21.649535, 56.165381, 7.359101, 52.155835, 24.932384, 25.811487, 27.689850, 27.372846], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [112.832262, 128.667796, 124.412494, 101.795915, 94.443081, 43.143831, 91.403711, 127.318218, 87.865731, 83.866543]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.804670, 0.575741, 5.042781, 6.287781, 3.137509, 0.204887, 0.479057, 8.306098, 8.422486, 8.916591, 1.026866, 6.324274, 8.020344, 8.259392, 9.705850, 2.992825, 2.796744, 7.591767, 1.049292, 5.370305, 6.294132, 2.412953, 6.973023, 9.363683, 3.108493]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 4, 6, 6, 10, 14, 15, 20, 21, 21, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 6, 9, 0, 3, 6, 9, 1, 2, 4, 8, 9, 0, 2, 3, 6, 9, 7, 0, 3, 6, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
