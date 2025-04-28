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
        %dense = arith.constant dense<[[2.387459, 6.891372, 1.136777, 5.605426, 2.869972, 3.445753, 8.199253, 5.981847, 6.750132, 7.097930], [2.906497, 1.710628, 3.989289, 0.120449, 7.346492, 8.924462, 9.751555, 6.841871, 1.920994, 0.538572], [4.533412, 8.547093, 5.302793, 9.486665, 1.677471, 8.827151, 3.451060, 6.911292, 4.210091, 1.471361], [1.040983, 8.586682, 3.552458, 8.044182, 1.496098, 9.240202, 4.106993, 0.210235, 8.228297, 7.525645], [1.642362, 3.264979, 7.418746, 3.623811, 4.529718, 3.784592, 9.913359, 4.235398, 2.384602, 1.388154], [9.109671, 8.142981, 3.043866, 5.539684, 7.600553, 5.709579, 5.302608, 9.130341, 5.909226, 1.272274], [1.371892, 3.937515, 8.261821, 2.454107, 6.468152, 3.043844, 0.738070, 0.685120, 6.472887, 9.397372], [1.716319, 3.737532, 1.361651, 7.583393, 2.605989, 4.722408, 2.698584, 5.674343, 7.167411, 7.291407], [9.458356, 4.690068, 4.262059, 8.781262, 6.121996, 3.233377, 2.442559, 1.173656, 9.650994, 2.229929], [1.941836, 4.177244, 0.937574, 4.815498, 1.445034, 4.046378, 8.976480, 5.488575, 7.239620, 7.372668]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[2.836207, 6.101201, 1.369403, 7.033422, 2.110589, 5.910060, 13.110871, 8.016505, 10.574048, 10.768374], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [23.445818, 76.479482, 31.200344, 78.698409, 25.923060, 76.924083, 99.809321, 52.197935, 105.954153, 107.435477], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [3.897902, 11.251248, 1.855967, 9.151740, 4.685680, 5.625734, 13.386571, 9.766306, 11.020652, 11.588488]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.460580, 3.942370, 1.033817, 9.230233, 1.632657]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[9, 3, 6, 9, 0]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
