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
        %dense = arith.constant dense<[[2.127906, 5.763751, 7.419602, 6.053308, 9.148142, 6.609962, 4.560920, 4.753362, 1.773077, 1.844998], [8.770265, 1.366272, 4.534700, 4.260332, 5.616964, 0.628753, 9.141687, 2.351221, 1.350844, 5.063444], [8.999009, 6.812288, 7.721224, 6.142547, 2.496498, 4.790663, 8.610077, 0.779540, 8.088764, 5.882163], [8.487585, 4.424055, 4.777236, 3.411066, 5.117343, 9.974134, 5.062992, 6.606382, 4.040282, 1.396327], [9.386727, 2.571861, 1.313416, 7.406577, 0.705027, 5.182511, 2.717730, 6.468172, 4.205766, 4.094891], [3.812671, 3.689635, 3.504414, 7.906905, 8.842726, 7.485908, 0.780465, 4.558229, 3.170889, 7.309754], [3.040045, 3.762641, 6.348231, 2.775066, 8.649348, 4.294136, 1.166283, 6.400637, 4.587110, 4.588340], [2.158380, 5.872554, 2.521614, 5.188251, 3.690646, 6.386063, 1.152525, 7.732967, 2.908737, 8.301892], [0.888540, 7.109750, 5.003201, 8.176639, 6.201075, 6.930327, 9.097711, 8.840927, 3.655697, 4.090575], [8.254257, 0.136856, 0.351990, 7.927522, 3.044917, 6.810431, 1.385962, 1.438430, 7.269478, 6.498539]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[116.583389, 111.983461, 118.192782, 141.795340, 136.168672, 131.667299, 101.819759, 164.920933, 110.182998, 108.513479], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [90.419756, 109.417816, 112.653051, 135.012349, 127.036870, 124.503048, 106.501394, 136.400651, 84.803408, 83.505788], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [105.053916, 109.163605, 120.887270, 126.465363, 125.497949, 118.750240, 103.082493, 127.297776, 100.473618, 94.062077], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [93.462598, 82.348679, 88.016955, 100.422535, 72.894885, 87.195129, 86.647544, 70.986488, 73.137713, 63.366676], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [109.149312, 85.218484, 66.395193, 137.144826, 71.056351, 110.223563, 94.223140, 134.915070, 78.085341, 78.669320], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[0.653752, 1.613031, 7.011408, 9.714757, 5.997602, 4.731994, 1.623956, 4.935906, 4.711511, 5.718730, 2.913071, 3.618312, 4.398172, 6.988576, 4.236072, 4.263489, 4.686186, 3.995041, 1.078764, 1.619980, 0.885125, 0.513242, 9.746992, 1.833614, 6.280579]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
