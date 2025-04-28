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
        %dense = arith.constant dense<[[8.068034, 0.819552, 0.978173, 8.247302, 9.948876, 3.111050, 3.491169, 1.813918, 6.920673, 6.299131], [4.628406, 0.737126, 8.840549, 6.648094, 4.649047, 5.583734, 7.568563, 5.830422, 2.749059, 1.712905], [3.172278, 1.126471, 2.278008, 0.183373, 9.707262, 2.475758, 8.921321, 3.302113, 2.776645, 9.930753], [8.738306, 0.823098, 5.705234, 1.337285, 6.370087, 0.252191, 8.544904, 9.738749, 2.481530, 9.943783], [0.766350, 9.337926, 5.177845, 9.175816, 5.650405, 5.140505, 5.195206, 1.799361, 8.169661, 7.286999], [7.049610, 2.450742, 1.101725, 2.792934, 0.978327, 5.169894, 3.130414, 5.202381, 5.827372, 0.652675], [0.756162, 4.868880, 2.187402, 4.560406, 4.537510, 3.746189, 0.551174, 9.977459, 4.606088, 8.008508], [3.671638, 5.444257, 5.881690, 3.520252, 2.602731, 4.498697, 9.432789, 1.803632, 6.170305, 4.818709], [6.707278, 6.607155, 1.424529, 1.963292, 1.273999, 6.931399, 9.470800, 2.374982, 3.946844, 5.515962], [9.516092, 5.356404, 3.730963, 4.057797, 7.667679, 1.082894, 9.877337, 6.578833, 9.350160, 0.579215]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[5.327166, 34.301298, 15.410264, 32.128098, 31.966796, 26.391935, 3.883024, 70.291285, 32.449931, 56.420007], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [21.479636, 21.158997, 4.561964, 6.287318, 4.079901, 22.197369, 30.329640, 7.605730, 12.639519, 17.664522], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [72.741098, 51.763311, 30.507385, 111.795592, 118.097554, 56.003336, 43.317143, 68.981472, 98.744773, 108.629999], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.045009, 3.202437, 8.337935, 2.204328, 5.000347]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 2, 2, 2, 2, 2, 2, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[6, 8, 0, 4, 6]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
