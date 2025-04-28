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
        %dense = arith.constant dense<[[7.349881, 5.330506, 1.135960, 6.083905, 8.448351, 1.645941, 6.385191, 3.045800, 5.158369, 2.198998], [8.580429, 9.221958, 9.442622, 2.877453, 8.901422, 4.017216, 8.807479, 1.999278, 7.200593, 8.538075], [7.307013, 7.480827, 0.016193, 3.374408, 3.189609, 7.738834, 7.673116, 2.777100, 0.488556, 9.348403], [7.546738, 9.514795, 1.505694, 8.678525, 5.814593, 4.242638, 8.624250, 2.904208, 7.768675, 4.464868], [1.544687, 2.962790, 3.615689, 6.421093, 1.608299, 8.085949, 2.081111, 5.022667, 7.028933, 9.271928], [4.331659, 1.888631, 7.842016, 0.126014, 0.188058, 7.147006, 9.376080, 0.081672, 2.566933, 7.882817], [0.674126, 5.509182, 6.808328, 2.558417, 7.093301, 0.628412, 7.895345, 8.306014, 3.653119, 8.801940], [2.741812, 3.247135, 3.775087, 7.925687, 5.290808, 5.780913, 7.132266, 1.864496, 5.470814, 3.581240], [3.628240, 0.582959, 5.117143, 5.665311, 6.163974, 8.896108, 8.167521, 4.237585, 6.672355, 0.777184], [4.706142, 3.341689, 2.905796, 8.212091, 8.794700, 9.658360, 8.777535, 6.535982, 9.750103, 1.880646]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[4.248483, 0.682615, 5.991913, 6.633788, 7.217698, 10.416887, 9.563748, 4.961995, 7.812986, 0.910043], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [45.504725, 60.300589, 35.961565, 77.677876, 29.135917, 112.225966, 52.341672, 61.328809, 71.796836, 130.645490], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [66.517251, 104.017776, 50.881709, 47.466572, 79.711844, 69.810547, 123.421106, 85.279227, 31.339772, 144.276858], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.170949, 4.128892, 9.927486, 8.415572, 7.453436]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 3, 3, 3, 3, 3, 3, 5, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[8, 2, 4, 2, 6]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
