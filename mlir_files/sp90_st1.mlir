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
        %dense = arith.constant dense<[[4.313003, 5.684238, 7.549232, 7.966280, 5.258893, 5.543289, 7.889215, 3.138138, 7.593764, 6.181274], [5.627238, 2.898633, 6.511202, 2.294664, 3.429415, 6.003879, 5.490118, 7.196904, 8.517708, 9.682912], [9.279366, 8.822553, 8.484351, 7.332431, 8.310828, 8.216779, 2.869538, 9.472536, 6.999125, 8.609247], [3.396055, 1.420558, 6.958917, 4.629996, 0.288696, 0.280777, 2.651088, 5.013474, 9.691656, 0.100258], [7.074338, 5.063807, 8.874094, 9.043639, 1.340177, 2.503637, 7.197329, 2.144389, 9.822716, 1.300894], [8.867195, 2.007369, 1.208194, 9.029285, 1.367092, 6.336382, 6.575457, 4.296947, 9.127931, 7.825768], [3.435752, 5.711857, 0.636424, 6.525769, 5.127006, 4.651716, 5.598402, 9.212418, 2.923589, 8.107563], [2.798664, 2.515439, 6.884955, 5.818395, 8.016356, 0.732593, 5.535638, 2.076114, 3.307591, 9.787882], [9.724622, 0.107429, 0.778202, 3.819304, 1.025166, 7.556692, 2.306805, 9.351452, 5.039494, 6.212371], [0.695658, 8.634972, 0.044248, 4.065590, 0.487756, 3.231002, 2.541766, 4.111454, 0.794244, 8.639409]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[22.792710, 37.892348, 4.222027, 43.291828, 34.012462, 30.859392, 37.139692, 61.115000, 19.395034, 53.785419], [25.343865, 13.054817, 29.325051, 10.334670, 15.445347, 27.040175, 24.726305, 32.413303, 38.361920, 43.609747], [5.931751, 73.628853, 0.377293, 34.666556, 4.159009, 27.550170, 21.673183, 35.057623, 6.772377, 73.666685], [20.899583, 8.742226, 42.825712, 28.493351, 1.776658, 1.727921, 16.314998, 30.853307, 59.643198, 0.616994], [5.234302, 6.898446, 9.161821, 9.667954, 6.382243, 6.727389, 9.574428, 3.808474, 9.215865, 7.501653], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [85.400046, 81.195896, 78.083347, 67.481980, 76.486385, 75.620828, 26.408992, 87.177835, 64.414490, 79.232793], [1.228914, 0.879656, 1.541558, 1.571010, 0.232808, 0.434918, 1.250280, 0.372511, 1.706347, 0.225984], [45.797831, 47.543428, 63.783223, 70.329953, 44.919304, 53.878591, 68.161738, 35.617267, 68.451662, 57.847055], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[6.633981, 4.503784, 8.526820, 6.154077, 1.213610, 9.203220, 0.173714, 8.345025, 1.008339]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 2, 3, 4, 5, 5, 6, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 1, 9, 3, 0, 2, 4, 0, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
