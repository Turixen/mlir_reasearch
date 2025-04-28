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
        %dense = arith.constant dense<[[3.542082, 7.955175, 6.770351, 4.482967, 8.440550, 1.012019, 0.713201, 0.469273, 5.852108, 6.979820], [6.318895, 0.173228, 4.808062, 8.107687, 1.380070, 6.874434, 8.871813, 1.701561, 1.017252, 7.272473], [6.413053, 7.849449, 0.583635, 0.127576, 7.305402, 1.791287, 3.635790, 4.988717, 2.550020, 3.037903], [0.859314, 3.873313, 1.701234, 0.029375, 0.275056, 1.341492, 7.700389, 9.122521, 8.920478, 9.790985], [3.533617, 4.377385, 1.294760, 2.287256, 0.941502, 1.551637, 4.664486, 5.812185, 9.374980, 5.312386], [8.785931, 9.261007, 5.161410, 8.474513, 1.453659, 0.433758, 6.009458, 3.145844, 5.074441, 4.832559], [0.304607, 9.466173, 1.785561, 7.077447, 1.681125, 8.276499, 7.126362, 3.519030, 5.650791, 0.275847], [7.903277, 0.811946, 0.175181, 1.763800, 6.130311, 6.383807, 2.518822, 9.579579, 0.030404, 8.876065], [9.090799, 9.471392, 3.332039, 0.082436, 8.991261, 2.680399, 2.304451, 5.959904, 9.017699, 4.166876], [5.106077, 1.124272, 3.795076, 3.141806, 0.108312, 9.702534, 2.290207, 5.583412, 8.142017, 9.484101]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[85.806514, 183.974091, 93.902273, 104.454191, 116.844388, 96.840852, 88.667765, 83.749762, 173.219497, 120.878197], [2.282877, 70.944336, 13.381908, 53.042002, 12.599205, 62.028307, 53.408592, 26.373409, 42.349912, 2.067337], [106.569985, 140.750637, 42.912535, 24.229202, 127.415056, 32.437782, 54.842994, 78.725255, 92.116861, 78.262416], [0.344404, 10.702951, 2.018849, 8.002132, 1.900767, 9.357842, 8.057437, 3.978800, 6.389080, 0.311887], [144.445514, 241.034645, 122.230682, 108.683239, 179.375630, 137.370950, 94.297498, 112.791509, 211.820043, 149.687599], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [151.968472, 251.799047, 93.043771, 66.139467, 168.042944, 86.794928, 160.914476, 199.160259, 263.698653, 200.813576], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [101.482965, 175.582498, 61.877990, 64.075123, 116.927196, 76.302582, 82.428380, 93.555580, 153.608026, 80.692399], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[9.010002, 0.855609, 5.006171, 6.534994, 2.072606, 1.935564, 7.494510, 3.745664, 9.526935, 2.274515, 0.113156, 2.654779, 1.130652, 9.463335, 1.721581, 0.122226, 7.257806, 8.245107, 4.364941, 5.459234, 5.890972, 8.387408, 5.960364, 3.736041, 7.199060, 3.482876, 1.986838, 3.948945, 5.457413, 6.686784]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 6, 7, 12, 13, 19, 19, 25, 25, 30, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 9, 6, 0, 2, 4, 6, 8, 6, 0, 2, 4, 6, 8, 9, 0, 2, 3, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
