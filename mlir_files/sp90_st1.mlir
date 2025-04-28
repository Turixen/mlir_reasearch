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
        %dense = arith.constant dense<[[0.395688, 0.325732, 3.137835, 9.895821, 0.147952, 1.895064, 6.665579, 4.412135, 1.514377, 7.988049], [6.021353, 9.543901, 4.759762, 2.605334, 4.608789, 7.499142, 4.376243, 1.281811, 4.135619, 3.578718], [1.416418, 6.735895, 8.259818, 1.026362, 5.263457, 2.662534, 8.868939, 4.023037, 7.577750, 4.174745], [8.524616, 2.144780, 9.181636, 7.753858, 7.209457, 9.173773, 8.502325, 1.266188, 8.171548, 4.599610], [8.232083, 9.846667, 0.493340, 5.187099, 3.372986, 4.204559, 3.737188, 6.660021, 9.676297, 6.274704], [4.664996, 1.073292, 9.665506, 5.284416, 4.009826, 3.532450, 0.695640, 6.152236, 6.159961, 9.483284], [5.074772, 0.247732, 4.465029, 2.170972, 2.095203, 6.990447, 0.089869, 6.099628, 2.510881, 5.065438], [5.587537, 3.920856, 9.472604, 3.974445, 7.270722, 3.468663, 1.138146, 1.569854, 0.437897, 4.992678], [0.598749, 9.628824, 2.201986, 4.437965, 0.297288, 8.805541, 8.989017, 0.692803, 5.261432, 1.931522], [5.355378, 6.190044, 0.980092, 7.441405, 7.993416, 7.983734, 9.442608, 9.085988, 3.198942, 6.633566]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[18.046172, 0.880948, 15.877894, 7.720098, 7.450659, 24.858421, 0.319579, 21.690618, 8.928834, 18.012982], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [43.426657, 51.944060, 2.602514, 27.363474, 17.793494, 22.180283, 19.714766, 35.133566, 51.045313, 33.100908], [76.340269, 30.788102, 69.752778, 66.011235, 59.217012, 75.221260, 69.477897, 19.437489, 75.837322, 43.920789], [32.719016, 7.527779, 67.791242, 37.063461, 28.123833, 24.775645, 4.879030, 43.150113, 43.204300, 66.513188], [28.082178, 44.510512, 22.198414, 12.150668, 21.494308, 34.974237, 20.409771, 5.978065, 19.287557, 16.690299], [9.088108, 40.499163, 54.448781, 23.383445, 31.459912, 19.096079, 64.226578, 31.561202, 47.567515, 38.711708], [53.739538, 64.279638, 3.220554, 33.861700, 22.019060, 27.447614, 24.396591, 43.477020, 63.167458, 40.961649], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.556056, 5.275294, 7.516960, 1.489426, 7.013729, 4.663765, 1.748139, 5.927904, 6.528061]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 2, 4, 5, 6, 8, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 4, 3, 4, 5, 1, 0, 2, 4]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
