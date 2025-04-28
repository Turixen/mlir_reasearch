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
        %dense = arith.constant dense<[[0.385967, 5.649139, 1.919762, 9.673650, 7.132313, 6.367212, 5.915121, 5.500629, 0.485678, 5.389261], [7.236802, 3.730474, 6.503982, 6.108934, 0.759763, 3.794262, 7.838509, 5.115948, 0.302900, 1.968324], [8.971049, 4.705094, 6.752154, 7.413812, 5.213853, 5.587072, 2.207440, 9.317610, 3.183599, 0.034004], [1.434918, 6.523129, 3.008384, 2.772301, 7.962398, 2.937040, 1.457933, 7.657916, 9.328751, 3.129898], [4.093126, 6.494910, 7.262237, 9.881643, 5.368245, 5.331197, 8.621174, 6.667216, 4.951681, 8.532969], [7.791851, 8.752518, 7.784762, 4.296266, 3.290044, 5.815062, 1.315306, 3.936364, 4.331597, 7.718543], [8.331700, 8.839273, 3.880816, 9.641304, 4.193861, 8.117167, 5.306372, 7.632362, 7.395695, 3.180726], [6.477719, 6.365641, 5.336695, 1.947014, 0.952227, 0.504453, 0.549670, 1.007683, 7.662946, 9.907741], [7.324632, 1.674162, 1.768275, 6.878031, 6.954303, 2.838603, 9.707265, 7.039450, 6.701615, 0.755629], [0.773033, 9.290127, 2.263307, 9.481504, 7.052543, 1.048269, 2.642787, 2.072329, 8.974366, 9.116554]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[11.143729, 84.354221, 32.971829, 98.773204, 105.014477, 71.062432, 59.106270, 89.241350, 54.940324, 63.650297], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [9.288224, 30.053734, 13.778352, 15.239212, 33.920266, 15.265811, 8.113144, 34.131599, 40.781389, 13.975748], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [12.073601, 29.723227, 9.424404, 31.119031, 19.383867, 12.352095, 11.983873, 13.784370, 27.268225, 22.225139], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [80.797294, 169.426071, 70.489340, 183.620226, 156.112950, 143.317904, 105.797181, 166.896243, 132.957098, 96.565323]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[8.651842, 5.438918, 4.039290, 0.419143, 1.263836, 1.996941, 8.870215, 7.444748, 8.004498]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 4, 4, 4, 6, 6, 6, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 3, 6, 6, 9, 0, 3, 6]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
