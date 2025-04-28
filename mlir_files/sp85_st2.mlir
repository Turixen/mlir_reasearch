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
        %dense = arith.constant dense<[[5.740501, 3.260815, 4.717600, 4.369772, 8.399906, 7.569835, 1.919218, 2.463190, 9.784870, 3.808448], [9.175525, 3.882339, 9.203812, 3.926148, 4.081661, 3.309874, 5.356704, 1.030338, 0.448828, 9.013676], [0.671804, 4.799358, 9.836361, 3.605666, 7.075275, 0.054202, 1.834952, 6.756874, 0.366691, 0.327628], [4.071535, 3.795468, 6.906629, 0.678851, 9.559998, 7.677959, 5.998011, 7.304219, 9.030612, 8.547201], [0.450878, 8.196095, 0.747447, 1.897281, 7.448757, 8.236252, 5.718901, 6.089742, 9.777921, 5.917036], [9.797224, 0.379401, 9.412653, 2.320832, 1.826506, 3.813965, 5.095858, 6.908645, 3.438773, 0.480954], [1.370418, 9.874225, 7.245361, 1.344661, 4.157334, 1.003334, 1.008130, 6.433400, 3.919272, 9.860346], [7.707520, 1.023699, 2.287849, 9.530950, 8.133106, 6.137587, 8.218430, 0.212237, 1.362516, 2.107634], [2.836105, 4.496674, 0.066962, 6.438068, 7.597337, 7.136209, 2.115108, 0.132440, 4.257990, 4.524505], [1.371800, 2.763702, 6.436501, 0.989633, 5.686584, 8.987880, 0.417327, 7.273575, 1.431639, 1.070319]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[64.187352, 118.645677, 137.359403, 82.559024, 179.328471, 113.615516, 62.088152, 114.685454, 147.219606, 75.389807], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [8.780997, 36.625927, 53.343189, 31.440006, 54.095825, 15.748796, 15.599335, 38.730602, 12.884980, 11.805391], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [33.549736, 86.234710, 87.686521, 94.569297, 136.553160, 69.940411, 36.823702, 61.075731, 44.690037, 46.938542], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [77.326631, 157.039019, 178.587166, 114.852090, 204.989773, 107.848726, 51.433604, 125.378254, 130.263921, 117.497517], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [5.835060, 9.348150, 0.391818, 13.299635, 15.767392, 14.639853, 4.386174, 0.446468, 8.743869, 9.289558], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[9.637091, 8.410769, 4.787976, 0.770887, 5.384674, 0.347013, 1.765482, 8.848267, 9.733574, 8.173559, 9.859729, 5.889670, 5.539707, 0.025869, 2.051292]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 7, 7, 9, 9, 13, 13, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 2, 4, 8, 2, 8, 0, 2, 6, 8, 2, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
