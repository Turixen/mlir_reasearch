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
        %dense = arith.constant dense<[[1.057466, 8.630120, 3.059815, 7.434077, 9.236236, 1.828582, 8.428548, 9.943551, 1.830278, 3.277254], [8.746980, 7.626271, 9.795260, 9.687470, 6.543192, 9.368299, 0.805046, 9.879091, 8.929923, 4.553479], [4.826018, 2.092146, 2.957065, 3.622319, 6.413857, 7.116690, 5.134581, 2.478991, 0.771937, 9.182951], [0.046839, 6.146393, 2.592812, 6.227401, 1.799717, 3.512069, 9.015119, 1.383665, 3.586195, 7.491173], [1.368877, 1.801072, 0.419078, 5.792279, 2.726581, 5.497798, 7.876204, 7.013226, 6.277081, 3.559514], [2.542749, 1.514727, 6.244312, 8.563529, 0.531016, 5.071279, 1.638482, 2.740143, 3.754357, 8.211305], [9.060145, 2.376330, 1.941355, 0.730864, 2.710580, 3.720217, 7.641466, 1.519436, 8.284685, 0.041831], [7.593784, 4.568343, 5.329147, 6.158380, 0.077808, 5.244458, 7.600820, 6.241463, 1.441020, 6.321222], [0.060363, 2.015040, 9.326929, 3.109028, 6.524220, 5.816349, 8.235093, 6.730970, 7.406393, 7.480334], [9.434251, 0.084981, 0.158934, 0.921926, 0.205174, 2.008482, 5.865006, 6.252289, 4.769712, 4.554783]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[42.425967, 86.183873, 48.766518, 78.124075, 108.715944, 49.934440, 112.340942, 102.381115, 45.568922, 60.899770], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [87.115096, 122.716111, 83.660500, 146.372751, 171.103219, 130.223290, 228.827124, 189.589021, 134.741479, 124.699561], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [95.837632, 67.460104, 110.308182, 83.746977, 127.772508, 129.157180, 195.696545, 125.803011, 158.195619, 116.449832], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [47.089537, 36.408810, 86.666406, 45.174891, 82.384080, 80.275414, 116.100743, 76.083780, 96.784565, 82.321919], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [56.714755, 92.820279, 87.384456, 128.826715, 143.614902, 124.575339, 204.044215, 173.796047, 132.726202, 121.684255], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[8.429404, 2.628681, 0.120289, 2.272805, 1.151310, 9.362914, 4.550151, 8.142762, 4.847895, 3.080616, 2.009792, 3.577365, 4.246831, 7.741341, 8.231181, 0.675959, 2.135649, 1.062055, 3.770121, 7.560754, 6.130663, 3.021362, 9.234623, 2.503245, 5.463929]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
