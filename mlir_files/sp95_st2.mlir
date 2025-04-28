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
        %dense = arith.constant dense<[[7.382134, 0.401504, 2.393629, 9.728303, 4.359899, 1.736984, 3.603365, 6.922491, 7.646215, 9.408623], [3.777362, 3.729049, 3.027955, 1.188258, 7.938488, 4.838688, 7.148931, 1.248785, 3.543425, 3.533364], [2.436927, 1.849417, 3.219045, 4.870662, 8.183170, 1.854236, 6.423882, 5.430112, 3.725032, 2.836743], [0.383847, 7.639774, 7.516342, 3.288538, 6.858778, 1.329295, 0.780472, 9.215678, 8.360497, 7.698749], [1.735056, 0.821280, 2.670561, 0.051837, 9.011006, 5.459831, 5.366678, 5.698621, 8.837670, 8.013253], [1.766677, 9.218324, 1.996512, 4.846870, 6.665488, 9.396611, 0.274529, 5.646687, 2.721585, 4.278623], [1.288377, 1.473200, 7.136824, 2.522763, 2.985165, 4.286934, 5.667938, 8.829770, 5.656177, 9.457490], [0.767471, 0.031191, 2.420686, 6.666557, 6.972356, 2.644595, 0.176959, 1.871082, 6.055283, 6.484610], [0.375943, 8.992357, 3.992217, 4.169999, 0.413561, 9.854508, 5.380407, 8.925118, 9.531004, 7.116994], [7.892812, 9.779116, 4.699176, 4.803483, 2.548609, 4.236974, 0.224107, 1.502428, 5.169527, 0.873295]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[1.454384, 34.788073, 15.444398, 16.132170, 1.599914, 38.123414, 20.814786, 34.527950, 36.871896, 27.532995], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [13.261301, 14.189181, 62.769097, 26.069755, 33.364487, 37.621481, 53.871860, 79.163986, 50.967341, 81.693505], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [1.507326, 36.054406, 16.006595, 16.719403, 1.658153, 39.511158, 21.572472, 35.784814, 38.214083, 28.535233], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [12.672962, 14.490950, 70.200512, 24.814854, 29.363216, 42.167912, 55.751988, 86.852972, 55.636300, 93.027458], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.868627, 1.039922, 8.326048, 4.009450, 9.836380]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 3, 3, 4, 4, 4, 4, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[8, 2, 6, 8, 6]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
