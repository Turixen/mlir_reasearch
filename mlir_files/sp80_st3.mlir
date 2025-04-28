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
        %dense = arith.constant dense<[[7.522277, 1.634046, 7.250499, 6.345889, 4.029867, 8.059016, 8.807388, 9.606983, 5.044854, 1.723358], [4.201889, 4.369196, 9.201195, 4.141073, 9.477745, 5.391740, 1.927156, 2.406753, 8.799640, 6.507161], [7.878801, 0.337542, 2.310371, 6.986205, 0.876128, 8.978256, 6.992707, 9.567293, 3.032043, 8.105943], [6.608672, 1.001485, 8.254259, 6.623481, 5.060365, 0.152406, 3.840817, 4.065625, 4.723363, 0.012185], [9.010954, 9.097448, 6.420985, 2.891055, 9.127545, 7.115373, 3.688255, 4.734756, 9.238412, 6.368622], [2.973794, 1.607670, 3.023397, 4.020192, 0.781023, 1.128128, 6.539903, 8.705929, 1.632709, 8.338398], [2.267730, 1.407436, 0.737742, 6.557714, 2.038866, 0.553583, 9.416356, 6.260524, 3.498262, 7.603280], [9.265405, 2.449427, 7.807302, 5.801375, 6.379182, 6.227424, 6.725919, 5.660429, 8.954459, 5.099190], [2.389785, 6.945138, 6.235542, 0.643258, 1.821185, 9.517679, 5.471884, 0.468053, 5.031762, 9.556327], [9.473906, 5.669056, 9.018275, 4.953651, 9.517190, 2.460761, 2.016123, 2.761220, 5.622932, 1.597335]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[160.248363, 59.495667, 161.226807, 134.864609, 128.243989, 69.904090, 121.204531, 123.308569, 110.206116, 44.468586], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.342378, 0.212492, 0.111383, 0.990072, 0.307824, 0.083579, 1.421665, 0.945203, 0.528162, 1.147930], [153.463364, 63.402137, 149.942740, 130.424409, 127.789129, 62.960535, 118.590137, 116.140616, 106.991252, 53.515415], [17.076590, 9.231819, 17.361429, 23.085377, 4.484913, 6.478117, 37.554460, 49.992557, 9.375598, 47.882065], [21.242415, 11.483916, 21.596740, 28.717043, 5.579005, 8.058450, 46.715850, 62.188214, 11.662770, 59.562869], [123.473392, 40.568583, 124.657179, 141.614469, 99.644265, 31.079732, 135.435104, 116.588660, 98.963017, 68.628393], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [192.492517, 71.780398, 201.559266, 150.311803, 160.076680, 64.334663, 111.010489, 120.330243, 127.588039, 32.169520]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[6.262417, 6.295102, 2.982696, 6.837151, 0.150978, 5.039616, 4.806170, 4.243804, 7.828638, 5.742358, 7.143203, 2.248942, 9.233192, 7.888515, 2.918339, 4.905569, 9.955254, 1.170690, 9.198492]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 5, 9, 10, 11, 15, 15, 15, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 6, 0, 3, 6, 9, 5, 5, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
