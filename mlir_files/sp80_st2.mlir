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
        %dense = arith.constant dense<[[9.910160, 8.647579, 2.354143, 0.667392, 0.917315, 0.004355, 8.342164, 9.130719, 3.352232, 3.754503], [8.772031, 7.744702, 1.354729, 3.871911, 1.428880, 0.250053, 8.643093, 4.112484, 9.742351, 1.511272], [2.840067, 9.705283, 2.009509, 5.833619, 0.099830, 2.435655, 1.710944, 5.332586, 0.234018, 7.370807], [7.234884, 5.338157, 0.143724, 1.677568, 2.027930, 3.332487, 8.036844, 8.146966, 9.506743, 1.616159], [7.361505, 7.475239, 3.748128, 6.347431, 9.373431, 5.781094, 6.400881, 3.637484, 8.738775, 6.436220], [6.336704, 4.771839, 0.029246, 4.031762, 2.017446, 6.872402, 1.847595, 1.785869, 8.658591, 6.934150], [6.256556, 1.420998, 6.995076, 7.831336, 5.822916, 5.876609, 5.413325, 5.833206, 4.186023, 3.486498], [0.901554, 4.671905, 8.849203, 2.884708, 6.787722, 7.394211, 9.488864, 5.149788, 9.769885, 4.007784], [2.530368, 0.436574, 5.319458, 3.533367, 8.875458, 3.616796, 0.978799, 2.874822, 0.204105, 3.571802], [5.354749, 5.578817, 0.176415, 6.010490, 4.941429, 5.207148, 5.490901, 7.709795, 4.225280, 9.070103]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[109.992725, 92.656386, 85.510839, 121.391952, 115.328769, 93.999428, 93.516459, 84.531484, 98.719311, 93.954978], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [155.099788, 171.141052, 58.648017, 80.732274, 86.897198, 57.770902, 129.742537, 126.561929, 102.340749, 112.929321], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [146.867231, 91.977595, 111.660385, 98.641558, 111.349107, 74.106093, 116.756825, 142.439315, 61.739785, 88.607301], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [109.133744, 102.408864, 59.987801, 82.999591, 96.766327, 66.735074, 92.587801, 79.235646, 91.628014, 83.249247], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [50.571478, 43.738775, 52.870320, 43.117282, 77.029340, 35.844282, 32.269130, 54.447627, 13.441034, 53.099998], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.538529, 7.698227, 7.370284, 8.330531, 3.729248, 8.415615, 7.678556, 1.145550, 8.226657, 6.341977, 2.870769, 1.372096, 8.076950, 2.635720, 0.331210, 2.211277, 1.828218, 0.455218, 7.949048]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 6, 6, 10, 10, 15, 15, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 4, 6, 0, 2, 4, 0, 2, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
