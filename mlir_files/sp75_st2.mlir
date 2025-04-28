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
        %dense = arith.constant dense<[[8.755358, 1.062454, 7.301412, 2.364763, 8.955917, 7.012423, 2.737264, 5.790144, 8.507393, 6.640342], [1.815010, 6.187912, 2.982814, 7.177433, 2.419752, 9.772162, 6.091662, 2.945344, 8.113596, 8.021305], [4.184844, 6.794471, 3.829663, 2.810357, 4.320028, 3.242339, 9.474160, 6.547617, 4.740017, 7.921023], [0.613454, 2.072477, 5.900662, 1.721372, 2.085404, 0.976702, 9.058317, 8.395819, 8.013532, 9.788301], [9.211819, 6.328812, 6.865454, 8.954741, 2.455599, 1.062208, 3.203901, 4.696821, 3.661986, 1.546786], [9.157073, 8.715826, 6.499205, 2.232763, 3.617093, 7.711351, 9.020831, 2.986305, 6.209681, 4.146556], [4.296037, 8.140359, 3.139600, 5.966227, 3.347554, 8.877643, 4.300080, 1.374023, 5.068199, 5.237932], [7.056703, 3.975537, 3.694043, 7.066742, 6.902523, 0.003311, 2.578339, 3.055135, 7.487318, 6.858086], [8.451858, 4.429753, 0.487053, 1.498822, 2.099594, 7.748068, 0.763730, 1.471428, 5.446753, 2.907414], [9.990077, 4.555250, 0.480286, 5.971989, 5.842155, 4.174251, 5.628363, 2.084325, 9.418260, 4.729673]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[220.201933, 193.927856, 131.573842, 146.261720, 123.653181, 174.876582, 149.768798, 130.237065, 169.473093, 159.496177], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [248.697925, 211.503600, 170.230433, 179.737611, 155.741597, 201.470593, 161.733443, 147.967669, 197.645737, 180.810053], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [103.994241, 95.754707, 48.250693, 61.199008, 55.739049, 106.032447, 63.343246, 49.265118, 85.053944, 77.060889], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [206.127769, 131.241476, 135.639053, 115.074118, 130.445551, 137.453657, 115.071291, 128.041632, 157.393847, 136.829524], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [256.975541, 194.840952, 152.690954, 172.717853, 138.224234, 205.973039, 119.584114, 122.073807, 189.840323, 149.640845], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.463746, 8.819487, 6.978555, 6.737999, 7.067740, 6.764372, 7.353046, 8.678618, 9.875458, 4.298568, 1.181901, 3.246569, 1.358690, 4.829653, 5.536713, 7.793621, 6.359838, 6.689116, 1.933979, 4.892359, 6.219482, 2.826808, 9.207280, 9.384665, 7.756795]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 5, 5, 10, 10, 15, 15, 20, 20, 25, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8, 0, 2, 4, 6, 8]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
