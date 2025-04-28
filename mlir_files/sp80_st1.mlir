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
        %dense = arith.constant dense<[[9.196909, 1.268399, 9.547353, 9.662089, 7.988758, 5.497792, 4.239251, 8.717743, 6.259490, 3.671902], [0.764103, 2.911144, 9.111512, 8.548598, 3.301764, 7.550179, 3.232961, 8.982932, 9.986107, 2.440640], [6.459002, 8.305461, 2.409130, 4.161817, 9.492436, 4.888848, 6.890353, 8.602153, 4.411746, 3.400164], [9.845035, 2.036407, 9.059741, 1.244928, 6.171757, 8.332701, 9.752657, 8.904549, 5.062087, 1.453794], [0.833827, 1.047838, 9.564551, 6.481047, 5.046122, 4.857294, 1.130913, 9.200363, 6.470430, 6.437733], [6.662208, 8.795143, 1.370092, 6.480563, 8.718617, 7.210803, 2.913520, 6.250872, 5.178793, 8.816944], [9.662571, 4.378567, 9.354302, 4.802921, 1.037652, 8.691224, 3.751287, 2.415427, 2.879060, 6.900746], [4.738389, 6.059745, 0.120917, 8.600779, 7.723481, 6.998492, 8.258948, 3.181112, 9.469628, 5.394667], [4.573449, 5.024640, 3.788344, 3.258587, 6.009875, 1.909586, 7.663948, 6.533468, 6.076869, 9.037772], [4.905233, 3.899836, 9.371682, 7.580582, 2.867551, 3.321638, 0.805200, 1.280724, 2.797365, 0.311490]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[81.051746, 105.695716, 23.039057, 66.339712, 112.198332, 75.336110, 59.409795, 91.030280, 59.414563, 76.923369], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [35.671542, 45.101372, 2.926924, 64.459845, 57.025540, 51.830399, 60.485955, 23.509152, 69.761338, 39.462085], [42.269196, 41.466208, 200.241637, 168.682743, 99.663374, 132.460012, 54.267714, 193.370861, 172.550918, 90.107134], [171.406263, 126.450985, 161.283321, 157.291039, 104.532048, 153.146809, 130.472477, 83.669221, 132.468305, 147.118399], [100.168479, 56.270044, 119.235243, 56.077958, 103.492410, 83.491034, 125.269697, 138.908523, 102.095147, 103.304156], [3.440877, 4.400407, 0.087806, 6.245631, 5.608563, 5.082097, 5.997403, 2.310029, 6.876563, 3.917447], [12.164899, 9.671532, 23.241620, 18.799721, 7.111480, 8.237610, 1.996884, 3.176175, 6.937420, 0.772491], [5.248739, 19.997083, 62.588338, 58.721600, 22.680311, 51.863309, 22.207692, 61.705105, 68.596065, 16.765119], [34.872139, 44.584615, 7.094530, 66.527068, 59.238038, 53.862667, 60.572035, 29.029115, 72.815043, 43.270359]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[5.894240, 6.451440, 7.302425, 0.218097, 3.001991, 9.859750, 8.546490, 9.413821, 6.095090, 5.258810, 5.608856, 6.177291, 3.456588, 7.974428, 0.726170, 2.479984, 6.869150, 0.650159, 7.245083]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 4, 7, 11, 14, 15, 16, 17, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 5, 7, 9, 0, 1, 4, 6, 7, 8, 9, 3, 4, 8, 7, 9, 1, 4, 7]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
