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
        %dense = arith.constant dense<[[0.211428, 1.248711, 3.341481, 7.211699, 6.712407, 2.880476, 0.276400, 8.438652, 7.834865, 6.978094], [0.460628, 7.654974, 3.543308, 4.851543, 3.329221, 6.661735, 6.357921, 5.556987, 1.554779, 8.027595], [3.748439, 5.243459, 5.843958, 6.482052, 5.082236, 0.379178, 3.563617, 8.459028, 5.920290, 1.859553], [9.188334, 3.474034, 3.905970, 0.543233, 6.519014, 9.761507, 0.230411, 0.400469, 4.070997, 7.722738], [7.312684, 1.032953, 4.184163, 3.906304, 2.523799, 8.365792, 8.954639, 1.730375, 1.642109, 1.604977], [9.113147, 2.321732, 4.618481, 7.337740, 0.960577, 0.290518, 0.037432, 2.805751, 6.312657, 5.575389], [9.403346, 2.809520, 1.310737, 8.752351, 3.223167, 4.957181, 6.887478, 1.202079, 7.760265, 7.352979], [7.591980, 3.142013, 2.525334, 6.297563, 2.705190, 3.142687, 7.006189, 6.049085, 3.760963, 5.192574], [3.292855, 2.515610, 5.633035, 2.520951, 1.855872, 4.393673, 6.004108, 7.169236, 2.184723, 5.683046], [2.031365, 7.383382, 3.746670, 2.511341, 1.220394, 2.859200, 3.230363, 0.809262, 5.320561, 6.157041]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[38.455732, 22.332578, 52.903138, 26.822674, 19.201724, 49.158454, 63.343185, 61.768004, 20.547905, 49.324449], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [53.132528, 7.505231, 30.401305, 28.382441, 18.337430, 60.784205, 65.062650, 12.572567, 11.931242, 11.661448], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [38.966427, 12.536990, 40.878221, 61.775299, 51.758176, 59.802862, 47.816727, 57.623200, 53.683714, 48.548440], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.547347, 8.242233, 7.265804, 5.770043, 5.161781]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 2, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 8, 4, 0, 4]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
