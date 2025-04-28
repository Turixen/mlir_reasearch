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
        %dense = arith.constant dense<[[3.981080, 0.909693, 9.410883, 3.547606, 1.331510, 2.223989, 7.749607, 8.779993, 1.798131, 6.541479], [8.286596, 2.175819, 1.598897, 2.256307, 3.857620, 3.152822, 0.471830, 0.011391, 8.818117, 1.918094], [7.462991, 4.096166, 5.841174, 9.866203, 9.709365, 8.468352, 3.321453, 3.734639, 6.483035, 5.593467], [0.426525, 6.960023, 8.608683, 6.351227, 7.720384, 2.879726, 2.821806, 6.849935, 1.485107, 6.703432], [3.302422, 7.092312, 5.102952, 4.137393, 6.259495, 7.784916, 1.105661, 3.315001, 1.006816, 5.021719], [1.991524, 6.196777, 2.511878, 6.367880, 5.229769, 2.191289, 9.971401, 6.673943, 5.749403, 9.090569], [2.452710, 4.191276, 2.163433, 7.550823, 6.469992, 5.477142, 7.936683, 2.663570, 4.671201, 6.443722], [7.545041, 2.608833, 5.002309, 7.368344, 6.901785, 1.298395, 3.218994, 7.029665, 7.860442, 6.216779], [1.683093, 9.354379, 2.711470, 3.239046, 9.119509, 8.894300, 6.137347, 0.580715, 9.841004, 8.079869], [5.846349, 8.784847, 9.060106, 1.497998, 9.744159, 9.387772, 2.028280, 2.166877, 6.175187, 0.462414]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [1.543330, 25.184031, 31.149515, 22.981172, 27.935309, 10.419953, 10.210375, 24.785692, 5.373687, 24.255585], [16.875191, 4.430935, 3.256064, 4.594844, 7.855829, 6.420546, 0.960856, 0.023197, 17.957604, 3.906091], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [24.373262, 52.344239, 37.661925, 30.535698, 46.197701, 57.455944, 8.160246, 24.466102, 7.430727, 37.062398], [16.803812, 93.393094, 27.071023, 32.338283, 91.048181, 88.799716, 61.274597, 5.797795, 98.251509, 80.668528], [17.320104, 4.547756, 3.341910, 4.715987, 8.062948, 6.589823, 0.986189, 0.023809, 18.431055, 4.009075]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.618383, 2.036444, 7.380420, 9.983890, 2.090135]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 0, 1, 2, 2, 2, 3, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 1, 4, 8, 1]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
