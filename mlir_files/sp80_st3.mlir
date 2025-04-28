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
        %dense = arith.constant dense<[[0.603961, 2.209384, 1.551160, 3.413365, 6.329949, 8.628291, 9.453791, 0.660031, 5.753652, 5.999968], [3.303306, 9.519813, 4.686345, 2.907068, 2.546353, 5.639395, 8.944786, 9.744240, 0.693439, 4.470207], [0.724347, 7.911775, 8.996547, 4.182321, 7.304248, 0.138141, 2.086925, 4.903695, 4.300355, 5.500188], [4.024122, 1.592569, 7.023385, 8.129181, 6.496416, 4.375407, 0.896426, 9.764164, 0.022097, 6.291875], [0.780896, 0.357987, 1.026039, 1.554073, 5.801880, 4.047466, 3.079867, 6.940030, 7.775666, 1.266596], [5.459861, 6.634988, 0.832556, 6.116717, 4.830468, 6.513639, 6.591090, 1.468793, 2.387932, 7.033109], [9.415077, 1.287646, 2.057033, 4.510293, 4.503607, 1.941373, 7.348824, 3.143738, 9.809698, 4.448155], [5.115728, 1.131473, 3.594212, 8.784470, 4.396238, 2.348982, 6.385468, 6.218392, 0.100256, 5.260634], [8.728644, 8.133219, 6.195352, 6.756123, 0.735748, 2.923019, 2.267832, 2.373501, 6.662071, 9.363802], [5.021085, 8.780908, 9.442552, 9.155497, 1.373971, 6.794972, 8.739643, 5.497013, 4.803063, 8.795147]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[109.092619, 31.674251, 57.292039, 93.925169, 99.729977, 79.946245, 121.872642, 72.919432, 122.367337, 98.749394], [4.221808, 15.444042, 10.842920, 23.860117, 44.247629, 60.313505, 66.083914, 4.613751, 40.219196, 41.940991], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [153.566801, 100.320092, 158.141462, 187.006159, 141.813665, 129.672336, 165.854327, 157.752100, 146.194448, 180.158487], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [50.080340, 87.580834, 94.180084, 91.316990, 13.703998, 67.773096, 87.169262, 54.827250, 47.905781, 87.722857], [128.860397, 44.386205, 90.060121, 123.893391, 102.269580, 77.460098, 109.750871, 110.474391, 112.983921, 114.164939], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [52.154519, 64.595914, 81.572869, 103.056752, 88.379807, 121.632317, 131.491353, 67.359126, 82.152535, 117.320940]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.930911, 3.944543, 9.442688, 0.266395, 6.990203, 3.775193, 1.685116, 8.760116, 8.966705, 6.052900, 9.974007, 1.734516, 7.032982, 9.532031, 1.945085, 8.619659, 3.471474, 1.162944, 4.387446]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 5, 5, 10, 10, 11, 15, 15, 15, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 0, 2, 3, 6, 9, 9, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
