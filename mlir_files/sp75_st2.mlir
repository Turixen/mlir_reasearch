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
        %dense = arith.constant dense<[[4.615429, 7.320930, 8.417615, 1.598928, 2.334007, 6.436194, 7.250440, 3.199240, 9.544998, 3.082536], [3.739608, 3.134302, 8.224429, 1.926940, 1.256552, 8.048142, 5.353926, 5.225737, 9.360495, 4.077237], [0.757678, 9.174423, 9.677918, 7.020793, 8.707951, 2.500747, 7.973810, 5.361502, 3.225462, 5.500272], [0.618766, 2.330092, 3.749572, 6.767871, 4.210296, 3.741536, 2.587041, 1.381214, 1.527291, 8.023514], [5.980881, 9.617521, 1.599541, 3.987503, 0.669531, 8.001206, 7.594928, 7.894366, 9.004453, 2.905063], [0.815714, 7.759520, 9.393174, 2.362546, 7.401912, 0.620444, 8.443755, 5.510272, 2.064784, 7.862357], [6.381918, 5.237286, 1.212031, 9.982948, 4.719083, 6.002145, 8.440767, 3.934081, 8.506145, 5.421586], [2.880621, 2.632980, 0.571663, 0.723102, 2.365279, 2.268534, 2.350718, 9.577393, 7.707536, 6.197158], [8.293672, 3.885345, 1.450004, 2.046883, 0.654581, 8.015519, 3.039409, 1.405251, 2.445051, 3.383605], [4.208836, 3.522857, 1.502925, 5.562000, 0.236358, 5.192718, 0.683511, 8.666758, 2.762436, 0.759202]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[123.696283, 113.470252, 62.839292, 91.953386, 56.737851, 130.976732, 112.306817, 64.421540, 99.179140, 80.534898], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [179.186217, 232.447487, 144.684404, 157.583857, 101.938022, 212.656348, 230.751958, 143.890960, 236.505506, 130.483292], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [205.832239, 266.371886, 169.917478, 196.402927, 131.293778, 241.187980, 269.222533, 163.532691, 264.896098, 158.263162], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [154.312295, 205.994107, 134.486374, 135.236323, 88.483580, 185.880631, 206.725856, 126.367352, 218.743151, 112.867983], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [156.655754, 180.124007, 75.590694, 149.724378, 81.915652, 175.124058, 179.512362, 122.280834, 169.798628, 110.487729], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.547018, 2.939043, 1.751215, 4.309149, 9.206397, 8.691308, 4.464287, 7.033469, 7.277927, 5.688208, 8.903788, 6.446896, 6.689861, 9.592338, 7.068520, 9.353305, 3.391081, 6.008626, 6.492336, 3.762266, 0.797477, 3.903655, 7.443301, 7.769480, 6.741966]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
