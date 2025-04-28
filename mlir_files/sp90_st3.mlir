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
        %dense = arith.constant dense<[[5.870396, 8.997241, 7.305425, 5.504186, 1.775485, 7.766623, 0.283886, 7.032513, 7.196680, 3.202026], [5.811919, 1.423804, 7.547947, 0.815240, 8.183556, 1.317731, 1.213134, 7.934722, 5.385381, 8.556139], [7.457294, 3.150332, 8.616011, 5.693550, 9.862070, 2.754405, 1.566584, 1.643664, 4.843079, 2.308095], [3.182448, 0.946867, 5.425617, 1.294211, 9.280602, 9.938178, 1.056205, 9.629146, 6.918939, 1.143790], [9.240770, 1.195525, 0.302639, 1.465725, 2.912429, 2.276408, 2.203956, 5.055523, 3.133333, 9.988181], [0.929110, 2.285463, 5.599259, 5.992442, 4.751443, 4.042952, 6.670762, 9.202012, 8.671127, 6.585519], [1.664627, 9.897118, 3.548774, 7.096035, 9.927933, 5.143696, 2.263484, 2.111195, 6.560712, 0.834388], [8.830802, 0.651021, 0.166546, 4.553698, 3.304921, 8.364047, 5.362452, 9.959346, 7.700507, 0.061549], [2.540710, 1.345264, 8.300104, 2.107601, 1.769309, 2.080450, 2.607071, 3.683668, 1.655603, 5.571928], [7.987320, 9.262612, 3.972750, 6.086186, 6.643143, 8.350687, 0.344859, 2.352360, 9.446337, 6.604969]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[40.223571, 87.880476, 70.245277, 67.440971, 150.111553, 118.543045, 25.739889, 90.208043, 107.168687, 17.788753], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [11.092113, 3.300213, 18.910457, 4.510845, 32.346632, 34.638549, 3.681300, 33.561448, 24.115287, 3.986568], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [40.827532, 132.683152, 64.091362, 91.237181, 103.518273, 81.932531, 22.937048, 48.938112, 93.416606, 21.904095], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [47.644881, 91.114290, 62.929913, 58.305051, 37.620925, 70.278992, 7.680373, 57.365010, 69.541161, 25.806816]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.564433, 7.781030, 0.400340, 3.485402, 4.024376, 9.605640, 0.151871, 7.417760, 2.462829]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 3, 4, 4, 4, 7, 7, 7, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 6, 9, 3, 0, 6, 9, 0, 6]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
