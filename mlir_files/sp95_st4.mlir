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
        %dense = arith.constant dense<[[9.884971, 0.328293, 9.174206, 5.561387, 8.496112, 4.355771, 0.891557, 9.270369, 5.443126, 1.636801], [1.644756, 5.155134, 7.443808, 7.636152, 6.400001, 9.212518, 0.421260, 2.439913, 2.431967, 1.335841], [8.724048, 7.011210, 9.993872, 8.561693, 4.772038, 2.443680, 0.249318, 3.855323, 7.382419, 3.150350], [5.942958, 6.897285, 1.054964, 9.720987, 5.956069, 1.317076, 5.903663, 8.739974, 0.102777, 0.097924], [2.523430, 9.447342, 5.068474, 4.272664, 9.748157, 0.546244, 1.833564, 8.308303, 9.750904, 7.940493], [7.221328, 1.380097, 5.984724, 3.360683, 7.871479, 6.223846, 8.911637, 4.569325, 7.840951, 6.323990], [5.830595, 9.352537, 0.117763, 8.351001, 1.190410, 5.917030, 7.698523, 9.209171, 3.069321, 5.570732], [2.637638, 7.810876, 0.666210, 6.374197, 8.095523, 4.618943, 1.966748, 0.703788, 5.187348, 9.576397], [9.835269, 0.478668, 4.492530, 3.099324, 1.963442, 2.945438, 1.491337, 1.712664, 7.042027, 4.496608], [8.453221, 1.914842, 5.528808, 9.100204, 7.414625, 7.848655, 2.549304, 5.125403, 2.002233, 6.681710]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [53.233930, 69.332546, 63.224969, 47.432875, 92.170936, 17.649875, 17.112896, 83.280540, 91.511184, 66.531346], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [158.931032, 6.572395, 108.044235, 68.696502, 81.356598, 58.213568, 19.478151, 85.112893, 101.358101, 50.730094], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.303717, 7.195400, 1.251076, 7.608566, 8.512281]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 0, 0, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 4, 8, 0, 8]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
