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
        %dense = arith.constant dense<[[9.345075, 9.941731, 2.096351, 3.859889, 4.512996, 2.471217, 1.510682, 9.473611, 4.027956, 3.737117], [9.386322, 6.217329, 2.819203, 8.173540, 2.534239, 7.415742, 6.229393, 6.861030, 1.371366, 5.209017], [1.859692, 1.916641, 4.139886, 3.693544, 6.262295, 1.525406, 2.456318, 1.039647, 8.432300, 4.557451], [9.511136, 7.581298, 4.454759, 1.791846, 2.124303, 3.819752, 2.159333, 3.661530, 7.598590, 6.108089], [0.081308, 8.506560, 8.481908, 6.591735, 8.847016, 1.733969, 6.413433, 0.880123, 4.190151, 9.811223], [2.230391, 2.439569, 4.002675, 5.262508, 4.663862, 8.394316, 6.453474, 1.720418, 5.534808, 0.971925], [9.972835, 2.955642, 6.907713, 3.436525, 7.517647, 3.609566, 9.428591, 5.725909, 2.465199, 0.918935], [0.017955, 2.027392, 2.245901, 6.426255, 9.747392, 2.609135, 7.420417, 8.774982, 0.881287, 3.764635], [6.761118, 8.040762, 6.972615, 2.294191, 0.573652, 4.975543, 2.745315, 3.498845, 6.524942, 1.596343], [4.099876, 0.856209, 1.624465, 0.686562, 6.299651, 1.186432, 9.660989, 0.304573, 6.513104, 0.596144]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[60.803964, 64.196713, 43.127283, 48.286498, 71.853384, 24.266335, 26.904361, 54.942154, 86.650490, 54.524157], [60.829003, 25.446927, 34.181447, 31.627139, 36.046632, 30.694405, 51.798122, 38.103543, 12.987333, 14.986269], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [23.703961, 21.906404, 28.954731, 57.100384, 116.016928, 28.218215, 114.157517, 72.588013, 47.071030, 35.647541], [82.333626, 141.398721, 152.468118, 93.458866, 114.217183, 71.313357, 84.883913, 47.963319, 165.763085, 112.863314], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [2.888458, 3.159352, 5.183645, 6.815186, 6.039913, 10.871020, 8.357541, 2.228019, 7.167827, 1.258687], [86.379664, 91.894758, 19.377278, 35.678251, 41.715140, 22.842288, 13.963737, 87.567770, 37.231753, 34.543425], [87.641634, 93.363036, 26.255265, 44.374089, 49.078410, 37.871876, 25.640691, 87.829054, 46.387495, 35.198704], [12.652123, 3.749701, 8.763530, 4.359777, 9.537328, 4.579307, 11.961664, 7.264224, 3.127495, 1.165815]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.930240, 7.920935, 2.159526, 4.066947, 0.469464, 8.024469, 5.533539, 9.591320, 5.506854, 9.473133, 1.295045, 9.243336, 8.928962, 1.882997, 1.268659]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 2, 4, 4, 7, 10, 10, 11, 12, 14, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 2, 1, 6, 2, 7, 9, 2, 4, 8, 5, 0, 0, 5, 6]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
