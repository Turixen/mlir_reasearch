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
        %dense = arith.constant dense<[[2.484185, 8.164334, 0.285806, 0.616037, 1.480072, 5.171204, 1.164760, 0.212374, 2.715400, 9.449910], [2.430536, 5.092581, 0.736367, 1.796334, 7.634029, 4.900770, 8.817047, 3.946320, 4.658140, 1.019972], [6.591952, 9.925994, 6.264171, 8.130939, 4.107098, 5.205023, 8.919662, 4.261048, 4.241239, 9.847813], [3.409360, 4.768167, 6.474850, 8.913974, 7.839863, 5.757322, 0.702633, 7.249874, 3.838764, 6.997765], [8.380947, 3.672527, 1.029221, 8.073951, 7.905993, 4.633460, 4.495801, 7.165219, 6.368472, 3.112742], [7.104408, 8.128667, 5.294014, 1.138280, 0.399962, 5.094961, 8.904407, 5.931987, 4.417950, 5.559969], [1.111729, 4.621034, 9.558784, 4.339337, 2.696644, 2.119121, 2.140548, 2.491477, 7.682925, 3.342459], [1.969302, 0.897094, 0.495147, 9.654147, 4.184060, 8.214242, 5.861438, 8.134409, 4.092267, 4.628979], [1.607261, 6.140200, 9.443340, 7.962912, 5.430642, 8.879152, 8.690688, 7.080112, 2.277479, 4.157002], [0.138874, 2.021058, 2.265902, 2.783591, 8.643507, 1.249199, 5.349188, 0.753328, 4.806555, 4.780248]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [3.787360, 1.725292, 0.952266, 18.566851, 8.046782, 15.797628, 11.272715, 15.644093, 7.870247, 8.902452], [14.183341, 33.809832, 65.243200, 62.148624, 32.358644, 42.423815, 34.449237, 44.623353, 65.184599, 38.186166], [39.906982, 73.022708, 104.047457, 120.967425, 99.436953, 94.649726, 45.187073, 101.054287, 47.001609, 85.703826], [19.667737, 41.208832, 5.958632, 14.535815, 61.774068, 39.656710, 71.346965, 31.933366, 37.693364, 8.253543], [62.618345, 53.797213, 64.140072, 83.605561, 71.592813, 51.147144, 50.124518, 67.605282, 82.028290, 41.598864], [64.468649, 97.075260, 61.262987, 79.519792, 40.167018, 50.904625, 87.233427, 41.672634, 41.478902, 96.310660], [30.865455, 64.133469, 62.724754, 86.098019, 147.852000, 63.293039, 78.560804, 65.472682, 80.262491, 88.174228], [15.507421, 40.786524, 75.838729, 49.468658, 36.532825, 27.692978, 15.101659, 33.769651, 57.518423, 38.435500]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.923200, 6.646764, 3.449924, 9.620638, 4.421663, 8.091935, 6.605719, 4.859185, 1.153557, 9.779903, 3.290391, 6.364173, 8.426998, 2.517421, 6.228700]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 1, 3, 5, 6, 9, 10, 13, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[7, 6, 7, 3, 8, 1, 4, 6, 8, 2, 1, 3, 9, 3, 6]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
