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
        %dense = arith.constant dense<[[0.989596, 2.263357, 5.300121, 2.166285, 4.863817, 1.177818, 1.920287, 8.560944, 6.878799, 0.600774], [4.003786, 7.163499, 9.138102, 3.272141, 4.342524, 4.956057, 8.513631, 0.069676, 2.987020, 5.289146], [9.565173, 2.790231, 0.715265, 3.931843, 1.941382, 7.487631, 3.129742, 4.521729, 9.751041, 0.181834], [1.631027, 4.228118, 6.032846, 8.335097, 0.189221, 6.658333, 4.648256, 5.654901, 7.739273, 3.450527], [5.497213, 2.261872, 7.879753, 1.646605, 8.357109, 1.369608, 6.953692, 0.740232, 0.833446, 4.304540], [6.053549, 6.948670, 3.615223, 2.346123, 9.944663, 8.194886, 3.248900, 5.532055, 3.401429, 3.344407], [4.596140, 7.241798, 8.488881, 5.776574, 7.467660, 5.122889, 7.216851, 2.153288, 5.110591, 7.790028], [1.879995, 0.636789, 1.801940, 7.004614, 2.892513, 4.090741, 9.791143, 3.830357, 1.086008, 1.086490], [5.998934, 6.934022, 1.996642, 6.017162, 6.051794, 1.998384, 2.231961, 0.479890, 6.633720, 0.921307], [3.092692, 8.796117, 6.283534, 1.305834, 5.866828, 0.276698, 4.238485, 9.600439, 5.223509, 7.405239]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[31.392205, 78.336748, 116.641275, 96.592462, 61.017061, 70.766964, 69.311218, 147.204241, 142.022535, 53.904341], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [92.949415, 126.012272, 132.932537, 95.006650, 113.114063, 90.718492, 109.498883, 105.091197, 133.677722, 111.587607], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [139.422765, 263.407528, 274.021728, 186.754271, 238.981697, 183.088332, 196.282940, 280.439648, 259.714637, 209.818871], [50.840957, 58.358664, 30.362584, 19.704004, 83.520622, 68.825054, 27.286011, 46.461166, 28.567031, 28.088126], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [46.708303, 110.811624, 129.090167, 73.135660, 98.033911, 50.463001, 80.159923, 157.643753, 131.976110, 87.130623]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[9.050173, 8.621458, 0.414658, 2.091555, 2.583580, 3.289298, 1.944552, 9.574159, 3.800641, 8.646076, 9.975156, 6.498294, 9.869269, 9.667501, 8.398537, 7.985060, 3.775867, 2.758281, 6.457264]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 9, 9, 9, 14, 15, 15, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 2, 3, 6, 9, 0, 3, 5, 6, 9, 5, 0, 3, 6, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
