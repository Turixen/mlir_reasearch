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
        %dense = arith.constant dense<[[3.673013, 2.004741, 3.188651, 4.556263, 6.894433, 5.395864, 7.736640, 7.344231, 5.393781, 1.969428], [2.181562, 2.133315, 7.806788, 0.665552, 9.714110, 9.394201, 5.876121, 8.894227, 6.824578, 7.572525], [4.819062, 3.677382, 4.632946, 3.075823, 3.306288, 0.201189, 5.154577, 6.560045, 8.665933, 3.516326], [4.897390, 1.551915, 8.873225, 1.793078, 2.182925, 8.718591, 8.933627, 8.421573, 5.047747, 1.044679], [6.700334, 7.360538, 1.244264, 6.670775, 2.596516, 3.466361, 6.029976, 4.716246, 7.216121, 2.157177], [6.269538, 8.176439, 9.780861, 4.133730, 3.240357, 1.621954, 7.930912, 2.297827, 2.417544, 2.744646], [7.043902, 4.907480, 3.057746, 1.673461, 1.842717, 6.649526, 1.528704, 0.281904, 1.698171, 0.824946], [9.540056, 4.092626, 6.543876, 6.430795, 4.325015, 6.324133, 0.085048, 2.015260, 4.881812, 9.387274], [3.752736, 9.159146, 6.474547, 5.166688, 9.350261, 2.944699, 4.974128, 1.470799, 8.705306, 1.858761], [3.467312, 3.327767, 1.717010, 5.452752, 9.995162, 1.312541, 6.503690, 4.562877, 3.308235, 2.985852]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[18.132176, 12.632669, 7.871146, 4.307766, 4.743461, 17.116985, 3.935138, 0.725668, 4.371376, 2.123548], [20.334503, 22.338123, 3.776155, 20.244798, 7.880035, 10.519882, 18.300070, 14.313096, 21.899841, 6.546706], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [89.729430, 38.493378, 61.548724, 60.485133, 40.679126, 59.481924, 0.799925, 18.954620, 45.916105, 88.292439], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [51.681520, 36.006463, 22.434859, 12.278277, 13.520124, 48.787956, 11.216190, 2.068347, 12.459582, 6.052675], [24.643358, 27.071542, 4.576317, 24.534644, 9.549805, 12.749032, 22.177831, 17.346022, 26.540389, 7.933945], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.574166, 3.034849, 9.405546, 7.337058, 3.677930]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 2, 2, 2, 3, 3, 4, 5, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 4, 7, 6, 4]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
