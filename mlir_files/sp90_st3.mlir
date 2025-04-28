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
        %dense = arith.constant dense<[[9.995799, 6.836932, 8.461221, 1.910998, 5.709375, 3.462638, 1.147125, 8.882256, 0.233080, 2.732523], [4.322409, 0.574823, 5.208127, 0.950783, 6.737289, 4.330471, 7.693155, 2.445869, 2.047744, 6.697986], [9.361741, 0.594708, 9.703281, 9.699306, 2.228324, 3.849740, 9.305942, 8.075511, 2.493737, 0.557395], [5.611324, 3.285668, 9.174852, 0.784141, 0.625642, 4.228952, 5.054364, 5.126250, 0.876487, 4.458472], [2.165412, 1.973218, 4.370095, 9.059530, 1.619341, 8.274081, 2.495870, 9.364243, 2.568733, 9.784928], [4.598821, 0.218997, 8.664035, 7.010377, 7.744316, 3.420172, 2.620135, 4.267756, 7.559580, 7.832469], [3.538720, 6.509745, 4.806992, 4.293445, 8.365991, 9.620638, 8.045761, 5.439788, 0.741718, 4.848912], [3.990403, 8.834400, 6.184791, 2.727241, 5.698152, 3.399115, 7.828982, 2.058247, 5.870948, 9.685191], [8.858212, 4.457549, 2.791107, 8.436077, 8.263128, 4.811228, 5.899728, 3.233733, 9.259709, 1.572281], [2.568147, 4.635207, 9.140724, 8.864825, 0.549744, 7.504234, 2.700510, 2.273532, 6.355491, 3.422627]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[44.724863, 52.100865, 89.916550, 71.121909, 18.692864, 64.919028, 23.109283, 39.678793, 48.085188, 32.555134], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [98.077205, 121.321587, 189.002747, 112.601147, 85.025799, 179.056167, 135.218059, 109.007328, 62.207229, 106.838113], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [27.644284, 37.199815, 67.669430, 58.494652, 9.962149, 51.607164, 18.459483, 24.510536, 40.648546, 24.844313], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [45.675033, 46.429092, 45.391188, 22.165803, 49.653719, 47.001515, 33.616289, 49.111746, 3.513397, 26.902563]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[2.554578, 7.472242, 8.302491, 9.043785, 7.587496, 1.133036, 6.354262, 3.254548, 3.714119]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 5, 5, 5, 7, 7, 7, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 9, 3, 6, 9, 0, 9, 0, 6]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
