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
        %dense = arith.constant dense<[[0.405290, 5.017989, 0.158366, 2.400696, 0.103063, 2.864019, 9.668512, 7.592200, 7.075384, 2.669471], [2.647517, 0.011808, 0.180304, 6.858843, 9.190305, 7.224123, 6.861948, 9.731588, 5.020128, 9.997405], [0.454919, 9.251616, 6.533458, 2.976899, 2.863036, 2.464698, 0.578052, 9.427914, 5.909515, 3.730627], [9.403367, 0.549967, 9.106698, 5.549076, 8.888569, 8.856675, 8.312394, 6.459196, 7.598276, 1.679510], [6.096907, 9.831112, 6.672060, 1.916946, 1.186094, 2.272293, 7.199248, 5.150055, 0.054938, 6.424202], [4.556279, 3.096413, 8.199172, 3.425722, 3.057098, 2.177711, 6.413758, 9.619622, 1.352438, 2.409233], [1.301798, 9.289748, 3.134627, 4.214721, 5.741841, 9.202527, 6.356121, 0.056405, 9.883208, 7.511184], [9.270426, 5.932885, 7.817062, 6.383155, 6.667956, 7.229060, 8.183911, 4.801295, 3.677934, 7.381635], [0.122039, 0.897319, 2.913542, 9.108882, 0.804553, 1.828095, 5.577409, 7.478527, 9.837060, 7.721878], [3.403101, 7.684918, 4.212970, 9.188937, 1.738430, 0.005480, 4.214695, 0.033389, 9.694679, 9.406857]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[10.219436, 0.045580, 0.695974, 26.475183, 35.474646, 27.885167, 26.487169, 37.564001, 19.377730, 38.590057], [19.403019, 33.144559, 28.605358, 30.153643, 5.845217, 11.958538, 37.319128, 35.947840, 26.257730, 40.580413], [0.618675, 4.548963, 14.770221, 46.177535, 4.078689, 9.267541, 28.274709, 37.912443, 49.869041, 39.146109], [43.314317, 96.557627, 79.115982, 126.005555, 49.570411, 80.645065, 122.886909, 99.325602, 149.096379, 145.395825], [92.013396, 76.979080, 94.102803, 75.564762, 64.972285, 76.512198, 125.657537, 103.874002, 63.497986, 80.176926], [7.892936, 34.012090, 1.423257, 29.597057, 18.567345, 33.445595, 78.831331, 70.347133, 57.685735, 37.520084], [10.504944, 0.046853, 0.715418, 27.214841, 36.465729, 28.664216, 27.227161, 38.613456, 19.919100, 39.668177], [2.837718, 5.407757, 3.290496, 3.966171, 0.959587, 0.579476, 3.425110, 1.321297, 3.684507, 5.193995], [9.921589, 0.044251, 0.675690, 25.703560, 34.440732, 27.072449, 25.715196, 36.469193, 18.812963, 37.465344], [24.616364, 39.693280, 26.938555, 7.739703, 4.788873, 9.174420, 29.067085, 20.793436, 0.221814, 25.937824]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.860007, 3.129357, 2.651789, 5.069506, 3.527014, 4.716368, 1.561192, 9.814701, 3.594974, 3.690136, 7.949531, 0.389713, 6.773457, 1.944359, 3.967847, 0.254105, 0.378615, 3.747507, 4.037517]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 1, 3, 4, 8, 12, 14, 15, 17, 18, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[1, 4, 8, 8, 4, 6, 7, 8, 0, 5, 7, 8, 0, 1, 1, 4, 9, 1, 4]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
