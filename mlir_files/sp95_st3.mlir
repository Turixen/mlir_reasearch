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
        %dense = arith.constant dense<[[7.531536, 2.916835, 6.402375, 1.925566, 9.506577, 1.306397, 8.702032, 6.308978, 5.638904, 7.838954], [1.401190, 2.151455, 7.170536, 1.813276, 8.793804, 3.667523, 6.018853, 8.802184, 6.764516, 9.884865], [4.010830, 6.258000, 6.577416, 3.792045, 3.062085, 8.084041, 7.005256, 2.930441, 8.852827, 2.614856], [3.115324, 2.565022, 3.928352, 7.921693, 0.139024, 7.561128, 7.267955, 7.279372, 5.796096, 8.056818], [8.125730, 9.819985, 9.740560, 8.677495, 8.935450, 8.737528, 3.239767, 1.476335, 7.523240, 9.629307], [7.198122, 2.682990, 3.947954, 0.443506, 1.540858, 7.276970, 2.018717, 8.169352, 5.953379, 0.812922], [2.893299, 5.172408, 7.016663, 5.006749, 1.290346, 9.811613, 9.256924, 9.697036, 6.792076, 6.295282], [3.796886, 5.542918, 6.654295, 1.289473, 3.615155, 6.992639, 8.837645, 5.778038, 3.850057, 1.452997], [9.572386, 4.378857, 4.665142, 7.217310, 1.242044, 1.451117, 9.197636, 4.137079, 7.520889, 7.105937], [0.401867, 8.058568, 4.408736, 1.987471, 7.513792, 7.136921, 0.449015, 7.802943, 2.545688, 7.357423]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[11.170030, 9.196917, 14.085152, 28.403323, 0.498473, 27.110512, 26.059337, 26.100274, 20.781968, 28.887815], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [48.094249, 65.406290, 91.800282, 100.555244, 12.886918, 142.528248, 135.390136, 139.539093, 102.512851, 113.398695], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [72.147720, 27.941574, 61.331016, 18.445796, 91.067463, 12.514520, 83.360396, 60.436327, 54.017410, 75.092611], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [20.601790, 16.962618, 25.978385, 52.386544, 0.919374, 50.002107, 48.063341, 48.138845, 38.329863, 53.280132]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.585512, 6.847760, 9.249393, 9.579417, 6.613049]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 3, 3, 3, 4, 4, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 3, 6, 0, 3]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
