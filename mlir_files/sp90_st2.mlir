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
        %dense = arith.constant dense<[[1.892828, 7.690918, 4.261181, 2.787429, 9.265043, 1.580346, 2.681001, 3.230495, 5.659994, 2.503492], [8.242608, 9.986245, 6.197250, 0.928439, 7.125598, 3.904204, 3.951727, 7.965878, 1.901407, 1.239969], [5.276318, 7.181551, 5.822661, 9.084260, 9.297335, 3.901286, 0.713665, 4.928204, 0.206510, 3.018805], [7.224662, 2.123853, 2.204187, 3.628165, 6.356956, 7.195834, 3.802771, 9.064149, 4.637856, 9.122630], [9.197830, 2.697027, 2.086123, 0.828317, 2.175596, 9.152005, 5.938867, 5.647786, 7.594793, 6.684395], [9.779612, 1.244559, 1.217373, 4.100397, 3.232484, 5.942709, 6.869747, 4.160402, 6.030209, 7.430123], [7.128311, 5.527618, 8.331652, 9.020110, 5.831696, 0.713447, 5.596150, 0.372766, 0.174391, 8.897466], [8.952359, 0.668877, 6.636198, 5.829087, 4.886063, 3.572927, 5.287524, 6.558176, 2.839575, 7.075748], [4.282642, 0.553802, 4.289983, 0.330003, 1.580957, 4.536416, 6.115831, 2.350483, 5.761170, 8.125332], [9.605770, 2.672289, 2.986781, 3.192949, 0.881711, 9.756729, 5.601510, 9.977341, 6.839466, 9.230678]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[18.885145, 2.442097, 18.917518, 1.455215, 6.971538, 20.004214, 26.968951, 10.364914, 25.405007, 35.830239], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [80.690745, 17.944953, 45.321955, 6.813367, 23.710526, 82.528715, 79.381495, 47.273578, 84.743182, 99.457066], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [44.080912, 89.742860, 61.278974, 73.152456, 112.159522, 33.644687, 20.065119, 49.678265, 34.210929, 33.481818], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [41.080905, 14.643829, 32.406240, 16.389405, 18.283446, 32.107739, 40.924951, 17.985484, 33.670319, 54.834535], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [34.919812, 4.515589, 34.979672, 2.690783, 12.890808, 36.989040, 49.867274, 19.165373, 46.975443, 66.252349], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.409695, 4.981724, 8.142099, 5.815640, 6.268180, 1.484340, 1.540155, 3.840968, 8.153802]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 3, 3, 5, 5, 8, 8, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[8, 4, 8, 0, 2, 4, 6, 8, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
