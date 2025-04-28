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
        %dense = arith.constant dense<[[8.140074, 1.263352, 5.524031, 7.267807, 1.315068, 4.675529, 7.732200, 1.551804, 8.914890, 9.199400], [7.870644, 4.085180, 7.698563, 8.858216, 2.864691, 3.968142, 8.696886, 2.673430, 2.943316, 9.242860], [7.204385, 1.250532, 8.666032, 8.553664, 8.308364, 6.878886, 9.609742, 6.682863, 1.662391, 9.614749], [9.961340, 3.947209, 1.342387, 4.971235, 0.101893, 9.008832, 8.576664, 0.985310, 2.293328, 0.531893], [8.880529, 6.855108, 5.057758, 8.913415, 4.911182, 9.601141, 1.757031, 0.136426, 7.354418, 4.781145], [2.629908, 5.452799, 0.121995, 9.612940, 6.503936, 1.499533, 8.356544, 4.606214, 2.420049, 4.519926], [4.310719, 7.711398, 3.014524, 2.669988, 5.789561, 4.660722, 5.958266, 8.024140, 2.616069, 9.716533], [7.883574, 0.336753, 0.767259, 1.160131, 6.742053, 3.779720, 8.861996, 9.584915, 6.318493, 7.058931], [6.757391, 5.718169, 5.260077, 9.409116, 5.457560, 8.671994, 1.250592, 3.763241, 9.457675, 2.643203], [8.861594, 7.762997, 9.325777, 0.278125, 3.109075, 1.927743, 9.177080, 5.113395, 7.941358, 3.681149]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[27.737123, 4.304845, 18.823012, 24.764893, 4.481064, 15.931763, 26.347302, 5.287738, 30.377290, 31.346753], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [4.593698, 5.196326, 3.174156, 3.350988, 3.984578, 4.029400, 5.549908, 5.460961, 3.690867, 8.275868], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [96.765825, 58.107653, 82.769718, 116.668810, 81.715629, 107.667114, 55.145224, 49.778668, 81.042733, 72.470888], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [3.230354, 0.560723, 3.885737, 3.835353, 3.725364, 3.084404, 4.308885, 2.996510, 0.745395, 4.311130], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [78.952613, 88.592662, 59.630204, 92.072787, 76.137280, 96.651808, 42.273439, 74.112702, 92.185078, 73.927952], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.407478, 0.227193, 0.636629, 4.453493, 3.327954, 5.198330, 0.448387, 5.360288, 8.264420]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 3, 3, 6, 6, 7, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 0, 6, 2, 4, 8, 2, 6, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
