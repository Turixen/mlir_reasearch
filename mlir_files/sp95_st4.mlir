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
        %dense = arith.constant dense<[[5.211573, 9.620539, 8.083457, 0.476446, 4.496507, 6.187674, 0.895371, 9.305524, 3.386589, 7.288042], [6.405410, 7.636989, 3.626301, 2.151508, 8.332466, 6.484559, 3.473676, 6.127668, 2.949233, 2.707309], [4.009407, 6.476557, 6.655580, 0.039881, 7.482925, 5.223814, 9.377451, 9.898067, 1.371394, 2.116864], [9.669706, 5.084860, 4.428636, 3.403385, 0.014903, 9.406073, 1.085190, 5.887611, 8.394481, 1.859231], [7.961508, 2.244474, 0.566256, 3.803940, 2.283071, 5.838773, 0.549111, 9.566076, 5.350557, 0.188515], [5.896641, 4.353507, 2.468437, 4.343330, 1.482673, 4.584656, 5.608361, 2.231372, 1.161599, 2.485418], [1.802164, 2.826052, 6.509173, 5.272812, 6.122951, 4.496274, 1.874309, 0.033046, 0.773366, 2.472248], [8.544213, 3.203458, 1.565562, 2.924412, 2.833811, 8.754115, 0.377153, 6.716014, 7.508675, 8.077453], [5.387901, 1.101026, 5.280730, 0.206623, 5.914762, 4.382074, 8.534575, 4.136346, 8.811927, 4.478181], [4.322616, 0.344141, 7.100671, 9.633350, 6.084355, 8.087357, 1.145510, 9.480343, 7.796570, 4.437433]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [67.135003, 44.760383, 73.630925, 4.962049, 66.722786, 61.364298, 75.052935, 72.007987, 88.257449, 63.883561], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [64.102790, 46.444293, 74.424761, 3.536280, 65.598002, 59.732087, 72.855678, 69.886555, 84.819288, 64.801838], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.599485, 0.397842, 8.390764, 3.897447, 8.127648]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 0, 0, 0, 0, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 4, 8, 0, 8]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
