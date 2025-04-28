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
        %dense = arith.constant dense<[[8.414780, 2.338972, 2.566710, 2.722144, 1.562974, 6.200790, 7.455103, 4.899907, 0.500413, 6.343612], [0.090227, 5.384790, 9.353235, 3.026060, 5.131274, 6.603131, 3.699071, 3.106485, 8.106849, 2.907137], [9.108933, 6.927522, 5.938196, 4.336873, 8.198832, 4.372529, 4.662839, 8.635329, 2.911268, 5.992209], [4.241246, 7.795417, 8.238951, 0.283422, 2.522734, 3.729058, 7.083249, 8.176081, 7.742690, 9.437511], [5.522002, 7.869569, 7.299596, 8.353957, 9.037668, 2.617863, 4.853033, 1.739971, 2.905225, 9.558720], [7.183828, 2.958802, 1.407986, 9.506595, 2.353868, 4.935603, 2.460078, 6.635179, 9.789170, 5.331903], [9.271077, 2.732339, 3.704532, 0.006118, 7.812630, 5.481143, 1.962879, 0.048940, 2.869991, 8.952351], [5.539849, 6.538358, 8.755681, 1.526038, 2.304264, 7.736551, 9.923736, 3.312066, 8.063804, 4.650962], [5.836449, 6.634223, 3.486025, 9.295393, 6.039762, 3.687791, 1.605639, 4.775286, 8.505034, 5.513834], [6.839227, 0.276315, 8.263649, 0.784219, 4.738373, 3.917634, 1.697365, 7.645574, 9.288070, 5.102134]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[49.499408, 44.125434, 58.024777, 14.396377, 16.941617, 58.675982, 74.325157, 29.347216, 49.930932, 40.199527], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [30.715211, 43.773160, 40.602779, 46.467483, 50.270514, 14.561424, 26.994182, 9.678295, 16.159824, 53.168775], [56.432905, 15.686086, 17.213390, 18.255792, 10.481931, 41.584998, 49.996927, 32.860749, 3.355972, 42.542820], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [103.668499, 90.233288, 78.534955, 95.306431, 42.872712, 77.630896, 79.753392, 129.220294, 156.695018, 126.373420], [3.024653, 2.300308, 1.971799, 1.440074, 2.722451, 1.451913, 1.548312, 2.867391, 0.966697, 1.989734], [42.908922, 7.709536, 32.842811, 2.241230, 33.249862, 25.011161, 9.792421, 21.823256, 33.635054, 37.170971], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.882886, 6.075137, 5.562332, 6.706403, 7.858933, 9.790997, 0.332054, 2.534575, 2.838140]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 3, 4, 4, 6, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 7, 4, 0, 3, 5, 2, 6, 9]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
