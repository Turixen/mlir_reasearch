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
        %dense = arith.constant dense<[[3.126992, 6.293156, 8.915248, 6.462410, 9.468130, 2.356740, 2.099852, 7.977968, 0.647161, 6.272742], [7.356542, 4.160573, 2.463825, 7.368461, 0.029063, 2.430281, 4.582671, 3.348353, 7.158491, 1.850395], [3.387800, 8.191231, 0.115341, 1.209222, 7.271052, 7.312342, 8.909889, 8.424190, 4.870560, 2.463783], [3.462540, 4.390650, 1.517049, 1.762594, 9.332936, 5.524447, 6.096126, 9.441797, 8.360824, 9.777393], [7.904556, 1.733578, 7.961517, 7.822629, 4.690979, 9.202505, 9.368556, 3.555377, 3.204268, 3.515652], [8.290284, 3.986197, 6.790361, 6.101141, 0.255807, 5.535982, 4.729403, 0.180724, 4.864676, 1.147363], [8.156331, 5.440850, 6.628125, 0.060241, 2.986445, 8.468659, 1.518628, 0.553012, 1.667943, 3.650669], [5.904894, 7.569971, 8.886213, 0.972539, 2.354049, 5.777278, 1.573936, 6.611776, 7.561485, 8.402634], [0.704496, 3.960202, 0.447840, 5.927587, 4.293542, 8.269785, 4.531471, 2.557272, 8.129076, 4.933383], [8.912601, 5.179128, 3.021614, 8.212172, 1.503823, 0.142209, 8.640486, 9.184446, 8.047457, 5.550632]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[20.318979, 12.452832, 16.990519, 2.566149, 7.998909, 21.406753, 6.240520, 2.317247, 4.649261, 9.087566], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [9.376140, 22.670209, 0.319219, 3.346666, 20.123505, 20.237778, 24.659181, 23.314951, 13.479855, 6.818815], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [13.655872, 33.305711, 0.518959, 5.597848, 29.663454, 30.335689, 36.256322, 34.059722, 20.539910, 10.494856], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [97.190859, 170.320957, 121.329263, 140.877175, 205.926162, 178.377881, 168.715213, 187.325289, 114.758211, 128.445940], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[0.311180, 2.189617, 2.767619, 4.004387, 0.127481, 9.778711, 9.504565, 3.806061, 6.143579]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 2, 3, 3, 5, 5, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[4, 6, 2, 2, 8, 0, 2, 4, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
