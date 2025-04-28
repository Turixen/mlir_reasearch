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
        %dense = arith.constant dense<[[9.722561, 0.072679, 3.195072, 7.256720, 1.141825, 8.529275, 8.592895, 3.209213, 5.430344, 1.298929], [6.299794, 4.992918, 7.080562, 6.483496, 6.823132, 7.387274, 3.439359, 6.927309, 7.182424, 1.865864], [0.312128, 5.980670, 2.898223, 0.179596, 4.638113, 6.008602, 4.844862, 3.427000, 1.944861, 3.762896], [7.788039, 8.019217, 1.468327, 8.610327, 5.240530, 2.527620, 3.532623, 2.473237, 6.216101, 8.969016], [8.153779, 1.106082, 1.225146, 3.370501, 3.916722, 0.555164, 2.858218, 0.856522, 9.863629, 2.333155], [7.566193, 7.585275, 2.652593, 8.957770, 5.519542, 9.896095, 6.911064, 9.507922, 1.464813, 4.626440], [0.511505, 1.572225, 1.607077, 8.356754, 5.899941, 0.655283, 9.525897, 3.862709, 2.371763, 6.702382], [0.930393, 6.152832, 8.799839, 9.489962, 9.171652, 8.166189, 4.635848, 6.845634, 5.534440, 8.545895], [4.689424, 3.946717, 3.740663, 2.727717, 6.118193, 9.266054, 5.675594, 5.613742, 0.012759, 7.249905], [4.418916, 2.342019, 6.740031, 8.541659, 7.752669, 9.363221, 7.290077, 5.883516, 6.868558, 0.330844]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[38.800940, 18.252986, 22.851850, 25.413371, 30.123439, 57.698339, 41.323392, 31.478419, 9.702396, 35.599432], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [53.873533, 0.402719, 17.704166, 40.210099, 6.326951, 47.261430, 47.613957, 17.782519, 30.089993, 7.197477], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [72.120605, 43.176218, 28.290742, 44.382706, 67.819172, 37.007148, 66.223390, 31.844700, 98.440225, 51.177994], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [46.203195, 0.345382, 15.183505, 34.485117, 5.426140, 40.532502, 40.834837, 15.250702, 25.805878, 6.172723], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [39.532572, 78.226279, 52.362789, 22.979660, 84.840629, 120.505136, 82.966522, 71.330210, 15.391420, 86.907944], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[1.775911, 4.592150, 5.541084, 5.178711, 8.536612, 1.756660, 4.752163, 7.862020, 7.906859]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 3, 3, 6, 6, 7, 7, 9, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 8, 0, 2, 4, 6, 0, 2, 8]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
