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
        %dense = arith.constant dense<[[4.329208, 9.769471, 8.893334, 0.752097, 0.603159, 3.557505, 2.527826, 9.936313, 7.026563, 9.538993], [3.506343, 0.700102, 0.430142, 6.451832, 4.265940, 4.280024, 8.408189, 5.533512, 2.744736, 6.896924], [8.136016, 1.202448, 7.828776, 5.094624, 1.477154, 4.482177, 9.291133, 5.703583, 1.220097, 3.919557], [7.803064, 3.589512, 3.566914, 7.157730, 6.472044, 4.855621, 1.294621, 2.396268, 8.654486, 6.554159], [1.727717, 5.776792, 3.103976, 7.239302, 6.896421, 3.213051, 3.043250, 2.259631, 1.667276, 4.442743], [2.729273, 1.772532, 4.141522, 4.532639, 3.250696, 6.990553, 8.775429, 3.475407, 4.876140, 7.269117], [7.438033, 9.533017, 7.758142, 8.033098, 7.037322, 9.966248, 1.614651, 1.132737, 6.797187, 3.855412], [2.750522, 5.174817, 0.615844, 9.019646, 7.887172, 7.749890, 1.159785, 1.984024, 3.534137, 3.852516], [5.815747, 1.157924, 1.495060, 4.588212, 0.699576, 3.869219, 9.499360, 1.723104, 3.456843, 8.341229], [0.128156, 0.068023, 5.919274, 1.842305, 8.745636, 5.982519, 7.059348, 1.010247, 6.501804, 7.187953]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [30.979439, 75.971807, 25.959880, 112.607187, 102.431799, 75.700864, 29.269038, 29.441303, 35.936017, 57.553717], [10.201808, 2.036968, 1.251512, 18.771794, 12.411877, 12.452857, 24.463873, 16.099914, 7.985890, 20.066804], [8.705087, 1.286553, 8.376357, 5.450966, 1.580474, 4.795682, 9.940998, 6.102519, 1.305436, 4.193709], [4.390660, 0.876671, 0.538626, 8.079015, 5.341831, 5.359468, 10.528775, 6.929090, 3.436972, 8.636362], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.001321, 6.865292, 2.909529, 1.069945, 1.252205]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 0, 0, 0, 2, 3, 4, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 7, 1, 2, 1]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
