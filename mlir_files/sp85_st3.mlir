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
        %dense = arith.constant dense<[[7.809995, 6.550815, 6.199299, 3.950128, 1.782705, 1.412518, 0.279856, 2.923905, 6.324944, 6.271015], [9.066641, 8.540200, 7.562708, 4.947502, 7.077200, 9.053764, 3.264619, 2.428891, 7.799701, 2.357621], [7.694333, 7.266926, 6.104935, 6.167135, 2.227118, 5.703203, 7.347067, 7.433132, 0.079690, 6.079307], [3.486082, 8.269573, 5.797120, 5.644808, 6.170042, 8.259949, 2.939759, 3.980039, 4.003645, 3.730759], [9.420668, 7.146298, 7.924143, 4.783682, 8.940627, 0.090570, 0.623464, 6.012478, 2.900964, 5.835404], [9.569814, 8.646426, 9.681526, 7.775038, 7.043557, 1.104579, 9.530391, 9.360826, 5.320161, 9.155651], [2.144361, 3.356347, 0.749668, 8.762778, 2.857463, 6.219827, 4.772403, 0.496838, 3.590550, 3.488259], [8.250673, 5.955105, 2.927344, 0.262385, 9.675565, 4.128303, 5.229844, 9.718975, 3.483996, 7.794690], [3.146322, 3.883045, 9.131734, 8.834178, 0.454275, 6.777972, 5.612191, 5.072502, 6.553813, 2.733439], [3.188031, 5.914882, 0.956943, 0.538612, 1.381059, 4.237356, 8.975656, 1.064455, 2.606922, 2.102891]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[100.785735, 121.987557, 74.962177, 54.416610, 41.289873, 65.549419, 78.442494, 42.944125, 85.165383, 80.227145], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [97.505169, 117.406307, 82.123259, 59.643204, 46.258655, 64.101621, 54.692598, 46.390685, 83.699799, 79.866900], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [67.830584, 96.909371, 47.537735, 72.579743, 43.644271, 80.041583, 84.421689, 29.883986, 66.497474, 62.097963], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [64.854239, 106.291157, 54.965587, 84.517198, 57.700625, 98.179982, 84.161017, 36.253343, 67.720500, 63.119483]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant false : i1
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
        %values = arith.constant dense<[8.695733, 2.347910, 0.314626, 7.532055, 8.886383, 3.914875, 4.534143, 3.852609, 2.492487, 4.569189, 6.039691, 2.588344, 5.265322, 4.777167, 5.031310]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 7, 7, 7, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 3, 9, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
