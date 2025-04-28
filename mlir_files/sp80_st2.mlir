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
        %dense = arith.constant dense<[[3.262540, 0.340111, 2.290002, 5.257463, 0.355048, 5.036579, 4.890935, 1.415314, 5.929184, 6.778116], [8.233204, 7.200260, 4.037294, 4.115922, 7.892489, 8.250742, 6.654172, 4.360413, 0.127026, 1.065992], [1.945923, 9.638968, 4.463067, 5.607400, 5.582331, 5.546099, 8.328927, 5.790061, 8.531480, 4.332726], [5.372811, 9.157508, 9.202114, 2.261542, 7.203331, 1.788986, 6.713549, 0.997185, 5.307670, 8.247559], [5.701162, 0.209281, 2.642576, 6.582852, 7.144644, 2.129768, 3.625836, 0.860086, 7.236326, 0.074141], [8.590053, 3.914668, 5.749066, 3.187862, 1.110940, 1.939971, 6.800244, 6.976657, 2.865452, 0.647218], [1.919994, 0.528277, 7.202517, 5.063740, 8.141504, 9.700784, 1.555824, 8.622171, 9.399005, 9.407331], [1.563456, 5.841313, 6.851086, 4.209239, 9.164884, 9.218753, 6.671699, 0.984190, 3.353469, 8.988794], [3.282375, 8.599584, 2.723308, 6.229202, 3.626433, 1.966491, 6.598609, 0.117806, 1.551282, 9.285317], [3.897609, 8.933428, 6.529492, 4.680497, 3.720084, 2.996968, 2.315586, 2.433679, 4.225678, 7.574442]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[55.350783, 157.417414, 92.532592, 125.548961, 113.912708, 104.485747, 132.891356, 83.100108, 120.789955, 166.333189], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [55.796337, 42.420338, 75.908675, 105.806254, 66.735746, 115.562328, 86.110737, 68.283366, 125.349371, 151.816841], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [91.896254, 41.827844, 87.677779, 142.260728, 118.508685, 116.943884, 103.733941, 69.982695, 169.296940, 124.698358], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [31.925902, 7.036683, 22.329616, 49.785451, 12.678115, 43.376665, 45.043802, 14.308997, 56.911378, 54.073554], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [34.435587, 28.498555, 67.313906, 73.477671, 65.052217, 100.321458, 56.717266, 74.340161, 110.666820, 105.213438], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.295948, 4.603987, 9.844641, 9.852776, 1.023984, 0.172012, 5.555726, 3.049937, 7.706049, 1.797570, 8.303743, 4.788234, 2.048109, 7.687504, 0.435933, 1.051860, 5.525983, 2.428154, 6.084314]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 8, 8, 13, 13, 16, 16, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 0, 2, 6]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
