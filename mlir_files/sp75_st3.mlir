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
        %dense = arith.constant dense<[[1.601515, 3.227426, 5.336816, 5.289797, 4.005662, 8.051668, 4.107671, 2.158167, 1.332267, 6.568496], [1.045318, 6.065817, 9.591377, 8.380360, 8.714404, 7.376311, 1.923104, 3.664475, 5.944922, 6.154172], [1.771947, 9.477172, 6.154576, 2.725425, 3.947349, 1.717561, 2.030601, 7.876444, 7.478652, 1.966450], [8.559167, 8.050858, 9.005569, 4.583351, 3.374245, 0.181719, 3.330470, 8.485688, 4.494573, 9.718265], [9.087167, 2.369181, 7.963069, 7.698579, 6.111315, 1.890147, 0.328646, 5.514773, 3.376710, 9.364809], [9.523103, 4.748848, 3.180260, 3.014750, 2.639592, 1.730973, 7.802626, 1.182262, 2.007585, 2.675259], [0.845288, 8.613115, 1.638905, 1.355065, 8.408769, 0.518734, 1.046322, 2.164571, 2.550989, 2.555882], [9.101152, 3.976490, 9.664695, 9.300983, 7.363000, 4.571525, 4.499792, 3.914695, 9.250403, 4.244650], [5.723554, 5.039852, 9.439401, 7.232556, 2.861070, 7.240222, 7.517031, 9.402309, 5.498501, 1.565202], [7.112005, 2.761612, 6.776195, 0.029793, 3.896294, 6.261586, 2.167150, 9.910718, 4.101718, 4.855778]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[94.568218, 99.396327, 103.156680, 26.175044, 101.663792, 78.958086, 41.032134, 130.842623, 66.608346, 93.086265], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [12.850822, 64.214349, 36.291597, 34.477916, 67.048044, 43.918116, 26.740191, 23.004202, 20.937216, 47.654819], [66.686410, 82.765560, 95.838560, 58.450280, 73.115995, 77.023964, 50.665294, 81.630887, 44.715301, 104.017624], [48.194740, 21.057323, 51.178955, 49.252933, 38.990433, 24.208304, 23.828444, 20.730088, 48.985088, 22.477350], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [155.355410, 213.594250, 183.639977, 122.375213, 178.736496, 92.577869, 106.766010, 143.319946, 110.636740, 181.058283], [62.495637, 29.104159, 66.619315, 10.069271, 40.045376, 67.352214, 25.762999, 86.952311, 36.801777, 52.833221], [70.779904, 34.779644, 68.750500, 7.314602, 36.747363, 50.967068, 22.682642, 93.321681, 40.139235, 54.304901], [78.438304, 123.385432, 110.744792, 64.427187, 114.268728, 86.704289, 57.758258, 102.372738, 60.500184, 120.719497]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.696985, 1.935899, 5.926699, 9.880621, 5.097269, 5.545414, 7.084673, 3.833317, 2.449070, 2.876831, 5.295455, 3.946542, 4.233664, 8.354335, 5.153789, 8.945689, 2.314615, 1.856390, 8.369314, 1.543289, 8.094854, 7.109815, 3.813082, 6.804799, 4.030230]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 6, 10, 11, 11, 17, 19, 21, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 6, 0, 3, 6, 9, 7, 0, 1, 3, 5, 6, 9, 0, 9, 3, 9, 0, 3, 6, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
