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
        %dense = arith.constant dense<[[7.349025, 7.804650, 6.274506, 1.276752, 9.986219, 5.408002, 3.079036, 2.063834, 3.745578, 0.935191], [1.856687, 8.890935, 0.236586, 9.003929, 2.698111, 8.052907, 7.556107, 2.461734, 7.778550, 3.604486], [3.707135, 4.975692, 1.785250, 5.539281, 6.287788, 9.727403, 7.194190, 5.737887, 4.281607, 9.523326], [6.151465, 4.538484, 4.882302, 7.984683, 5.581317, 9.871026, 5.247467, 9.816414, 1.972148, 2.567033], [5.187601, 1.195521, 2.225719, 1.920733, 0.945790, 3.264279, 6.982850, 9.500067, 2.298071, 3.143133], [6.589049, 2.564244, 1.457946, 3.927796, 3.082368, 0.843150, 9.018448, 6.413168, 9.848604, 2.082566], [2.008441, 8.689215, 3.817156, 6.968362, 7.206485, 4.880566, 6.915332, 4.919535, 1.566743, 8.885342], [5.165017, 2.417625, 6.839618, 9.607308, 0.134876, 1.911712, 9.392062, 5.275109, 9.460839, 3.183324], [7.087951, 9.575788, 0.564781, 2.194259, 4.447059, 1.739672, 3.143117, 6.901121, 7.982805, 8.835895], [2.307724, 7.365553, 8.296585, 3.916077, 2.921681, 7.579812, 1.675951, 1.335907, 9.117241, 2.696770]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[5.166273, 16.489173, 18.573464, 8.766874, 6.540731, 16.968832, 3.751930, 2.990679, 20.410656, 6.037226], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [49.844520, 36.774746, 39.560657, 64.698854, 45.224686, 79.983642, 42.519544, 79.541129, 15.980057, 20.800338], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [13.714694, 59.334536, 26.065553, 47.583645, 49.209677, 33.327080, 47.221529, 33.593180, 10.698547, 60.673796], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [24.543761, 85.938384, 76.884526, 53.525743, 46.631235, 74.889742, 36.027745, 26.740653, 75.722807, 50.492708]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.238688, 8.102870, 6.828527, 3.335916, 7.732195]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[9, 3, 6, 6, 9]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
