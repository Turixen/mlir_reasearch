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
        %dense = arith.constant dense<[[1.590147, 3.184131, 7.636856, 8.217767, 9.355571, 0.931161, 2.518716, 4.064518, 7.802166, 2.082983], [5.299492, 2.450487, 6.734485, 5.954807, 5.666186, 8.170044, 4.246478, 6.665490, 2.828043, 5.159641], [3.419560, 7.576023, 6.355859, 8.776487, 6.984515, 5.452291, 3.938424, 6.900795, 1.940452, 5.496376], [7.199115, 5.734501, 7.132735, 2.522366, 0.545351, 1.726538, 7.471776, 4.729915, 3.115394, 1.030008], [6.175343, 7.265962, 9.414190, 6.940368, 5.150511, 6.080961, 5.372686, 2.155204, 7.504741, 9.683666], [8.896970, 4.293021, 2.952267, 3.140972, 6.709826, 8.873895, 2.701000, 8.997163, 0.994716, 6.228738], [7.584462, 0.202352, 1.098570, 3.906684, 0.120358, 1.148466, 4.063383, 7.893116, 3.010925, 8.457033], [3.300167, 1.343616, 4.930729, 3.950513, 9.182737, 4.763664, 9.843144, 6.829682, 9.478070, 7.729732], [3.761874, 0.924474, 4.763573, 4.140289, 2.162371, 6.367223, 9.953748, 3.876324, 3.256819, 1.276072], [3.607523, 8.958841, 3.217829, 9.159498, 6.635584, 7.632718, 1.680677, 7.302678, 3.365572, 2.886002]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [20.411083, 8.310084, 30.495883, 24.433385, 56.793973, 29.462609, 60.878496, 42.240649, 58.620569, 47.807337], [12.524547, 5.791354, 15.915934, 14.073283, 13.391171, 19.308662, 10.035907, 15.752876, 6.683652, 12.194030], [30.518180, 59.043194, 30.022542, 66.721531, 46.671190, 61.402655, 30.532103, 54.340232, 27.968582, 20.966202], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [51.847840, 14.832930, 42.264769, 45.491278, 33.336374, 50.764396, 35.974357, 60.658076, 24.801176, 53.446978], [43.468124, 74.268766, 67.315647, 77.148220, 58.242559, 48.271597, 48.295599, 66.584932, 22.574370, 47.129327], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [73.801508, 1.969012, 10.689771, 38.014449, 1.171154, 11.175290, 39.539232, 76.804903, 29.298166, 82.292162]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[6.184863, 2.363349, 1.989261, 6.385220, 5.824631, 2.766215, 8.170388, 2.157070, 9.730619]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 0, 1, 2, 4, 4, 6, 8, 8, 8, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[7, 1, 8, 9, 1, 6, 2, 3, 6]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
