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
        %dense = arith.constant dense<[[2.665492, 8.941835, 5.897656, 1.613277, 3.965193, 6.549832, 9.667449, 3.782995, 5.561780, 4.452153], [6.234178, 2.195648, 0.823077, 1.125356, 0.761193, 5.791461, 4.947442, 0.442717, 5.432728, 3.027144], [7.212367, 4.807101, 5.335068, 9.876231, 5.665396, 2.609336, 3.502177, 5.884363, 6.187015, 0.443303], [5.130495, 4.716690, 1.396781, 6.064374, 7.884717, 6.031415, 7.327424, 2.531074, 1.160179, 8.452750], [0.309749, 4.053456, 5.205535, 1.856957, 1.417877, 9.624558, 5.455561, 3.990735, 5.044539, 7.455118], [4.498699, 0.761966, 1.787978, 4.999669, 4.465736, 2.013100, 0.525167, 0.785887, 7.455999, 6.696605], [4.856250, 5.650519, 9.345960, 9.098925, 3.964089, 0.563901, 4.884202, 8.172550, 7.820536, 0.140699], [9.142613, 8.258410, 5.510001, 1.368025, 3.147490, 4.345009, 1.751653, 9.801591, 8.974812, 8.996564], [3.595037, 8.130472, 3.731186, 5.693428, 4.304800, 8.112551, 2.092182, 3.290307, 6.297547, 1.309313], [5.333649, 8.199634, 7.284369, 4.260075, 9.694489, 6.405362, 4.415784, 2.787925, 1.537213, 5.921228]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[148.676002, 200.544104, 203.280006, 174.310135, 182.157495, 133.414158, 178.792447, 137.899446, 193.852247, 145.701805], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [59.142179, 52.461066, 36.199747, 13.801649, 22.152118, 27.646546, 12.524782, 62.364799, 57.554017, 54.451765], [106.063103, 146.088303, 126.515781, 129.743950, 148.626648, 107.241628, 145.757721, 97.760267, 85.645874, 112.974656], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [72.517266, 95.933473, 122.286222, 102.640423, 90.150815, 41.957779, 67.436565, 86.171491, 75.906457, 35.526167], [125.050315, 194.902233, 186.120370, 145.052008, 176.688072, 127.324374, 165.529619, 123.709310, 119.175679, 116.393811], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [42.394640, 28.256372, 31.359786, 58.052956, 33.301470, 15.337802, 20.585965, 34.588565, 36.367571, 2.605759], [136.112577, 192.662879, 196.607559, 168.976923, 170.140747, 114.040226, 157.364382, 140.795108, 136.741913, 89.493417]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[9.068945, 0.436791, 1.521232, 7.662943, 9.224038, 6.507288, 0.562929, 6.024769, 3.858096, 7.763313, 6.082603, 4.951788, 8.566729, 5.796236, 6.283926, 3.224500, 0.517083, 7.920140, 9.556103, 5.878048, 5.696304, 3.857828, 1.406049, 8.535521, 8.332138]> : tensor<25xf64>
        %row_ptr = arith.constant dense<[0, 6, 6, 8, 12, 12, 14, 19, 19, 20, 25]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 3, 5, 6, 9, 2, 7, 0, 3, 6, 9, 6, 9, 0, 3, 5, 6, 9, 2, 0, 2, 3, 6, 9]> : tensor<25xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<25xindex>), tensor<25xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
