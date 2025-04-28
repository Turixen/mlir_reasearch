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
        %dense = arith.constant dense<[[1.493264, 0.983501, 7.815764, 1.790812, 3.514770, 2.440230, 5.503466, 8.510644, 2.867342, 0.879510], [3.138416, 7.571633, 6.462404, 2.199766, 3.679818, 8.858182, 6.811457, 3.512353, 6.964355, 9.112290], [0.281821, 4.219624, 3.768566, 7.251230, 8.250631, 9.289698, 4.759997, 4.885481, 6.759888, 3.667670], [1.730658, 0.223269, 7.942866, 2.297054, 2.039112, 7.122737, 5.813950, 0.210027, 2.197965, 4.035138], [5.901808, 4.679029, 5.066868, 6.752179, 4.221530, 0.309756, 0.250300, 1.063405, 9.834670, 0.758692], [6.789749, 6.155857, 8.281015, 6.079226, 1.109817, 5.115478, 2.918482, 3.441824, 5.733203, 7.958732], [2.161535, 7.857276, 7.611078, 1.953092, 6.846517, 4.453232, 5.621677, 8.257698, 5.308619, 0.059868], [9.528042, 9.445040, 3.657377, 1.926486, 7.804299, 5.907913, 2.411818, 4.681135, 9.298693, 4.017523], [5.528441, 6.608499, 3.500854, 4.325678, 8.735122, 6.282240, 7.600444, 0.516300, 7.254220, 4.286579], [0.175883, 9.847916, 7.653192, 5.644512, 7.270127, 0.112373, 2.030092, 7.047374, 7.063132, 3.484455]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[43.460835, 68.192228, 42.537984, 63.413573, 101.317695, 86.904028, 78.038982, 24.383667, 83.756160, 48.125255], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [16.137550, 42.897380, 64.780917, 16.053092, 46.566539, 30.841373, 47.166506, 70.235667, 36.612779, 3.494178], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [99.233093, 134.921137, 145.513096, 162.955709, 203.148994, 159.060866, 144.267823, 107.074232, 210.733904, 82.252571], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [19.973544, 31.621689, 31.031320, 21.023257, 28.684338, 13.401259, 16.514682, 22.911656, 36.968595, 3.001012], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [78.537171, 73.293193, 124.626783, 78.982564, 108.259502, 62.446925, 100.062758, 92.679550, 123.169213, 37.778154], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.182792, 7.648093, 3.404267, 4.993999, 0.046916, 5.719382, 9.555644, 6.825804, 8.630819, 2.224625, 2.471104, 0.271841, 9.868559, 5.336238, 5.843845]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 5, 5, 9, 9, 12, 12, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 8, 0, 6, 8, 0, 2, 4, 8, 4, 6, 8, 0, 4, 8]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
