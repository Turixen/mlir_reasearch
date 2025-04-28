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
        %dense = arith.constant dense<[[6.413408, 4.665929, 9.476716, 7.865087, 2.455950, 9.890680, 6.080832, 8.708591, 2.128806, 4.497902], [1.699157, 2.744052, 5.221839, 9.263875, 0.256622, 7.774660, 2.569999, 2.831469, 9.847840, 9.600718], [5.439882, 9.920208, 4.080929, 8.765120, 6.426630, 9.574100, 2.524340, 7.378621, 8.274593, 9.219666], [7.383175, 6.637297, 6.909957, 5.218749, 0.335510, 4.901453, 4.426258, 3.813327, 3.184120, 6.558249], [2.395423, 2.009264, 7.497462, 5.366109, 1.720448, 4.752286, 6.717466, 5.400985, 5.739063, 2.780632], [4.614098, 9.654414, 4.471825, 8.956602, 5.459280, 6.040675, 2.881352, 6.757009, 4.692876, 2.437386], [3.424223, 7.364760, 0.306899, 4.052555, 2.257431, 3.760598, 1.200400, 3.639584, 3.560769, 3.037992], [5.069093, 3.446174, 0.273134, 0.049512, 0.983127, 7.780543, 7.617560, 0.486759, 5.820506, 9.253337], [0.423724, 9.669509, 6.920818, 6.283175, 9.759231, 5.024989, 8.464695, 8.040429, 9.983532, 0.851311], [0.523502, 0.926780, 1.290468, 6.921908, 1.604461, 7.708102, 0.680818, 7.291798, 8.146538, 3.017573]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[18.681603, 25.309411, 14.832557, 30.367968, 8.613588, 31.662179, 11.081034, 28.869675, 27.475335, 21.269425], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [71.666959, 95.638415, 58.427595, 126.082034, 33.369732, 131.362269, 42.500873, 119.865663, 119.646226, 87.237283], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [50.125962, 76.498030, 32.135625, 56.292783, 24.102006, 58.444295, 28.581753, 53.542049, 36.658397, 41.654040], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [59.784324, 66.571509, 59.513439, 97.585061, 22.912287, 104.063778, 39.821511, 93.537226, 85.197113, 68.785463]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[0.329346, 1.240849, 1.859335, 1.988887, 0.676996, 5.455059, 6.437276, 9.564040, 2.370788, 1.046457, 7.941936, 1.665511, 4.915321, 2.682229, 6.929299]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 8, 8, 8, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 3, 6, 9, 0, 3, 6, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
