// Sparse-Dense Matrix Multiplication using CSR
#CSR = #sparse_tensor.encoding<{ 
   map = (d0, d1) -> (d0: compressed, d1: dense) 
}>

module {
    func.func @matmul(%t : tensor<10x10xf64, #CSR>, %s : tensor<10x10xf64>, %out : tensor<10x10xf64>)
        -> tensor<10x10xf64> {
        %0 = linalg.matmul
            ins(%t, %s: tensor<10x10xf64, #CSR>, tensor<10x10xf64>)
            outs(%out: tensor<10x10xf64>) -> tensor<10x10xf64>
        return %0 : tensor<10x10xf64>
    }
    func.func private @printf(!string.constant, f64) -> i32  // Declare
    
    func.func @main() -> i64 {
        %c = tensor.empty() : tensor<10x10xf64>
        %t_sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %s = arith.constant dense<[
            [[4.240212, 4.232314, 3.894041, 1.812698, 6.406367, 4.244449, 4.939696, 1.414242, 6.562588, 5.898791], [3.200602, 5.974602, 4.420540, 7.518661, 8.969949, 1.027243, 1.905397, 7.192478, 7.987385, 5.174203], [2.245971, 5.206812, 6.096746, 0.770338, 9.912059, 6.942929, 8.063194, 7.697283, 4.077366, 5.553931], [7.743112, 2.969827, 3.111288, 5.753430, 0.274361, 9.317364, 6.535985, 6.921552, 0.692544, 7.546352], [5.750687, 8.313420, 2.921177, 3.524937, 3.099111, 1.877344, 6.383606, 3.631792, 8.994307, 6.569486], [1.341905, 6.347502, 2.719035, 8.608306, 6.848550, 3.219351, 3.869235, 0.681559, 0.653632, 0.361642], [9.963205, 0.235689, 3.830130, 3.155899, 1.151183, 1.963266, 1.101771, 1.746252, 9.507715, 5.025840], [4.558823, 0.344483, 3.968018, 8.536904, 7.944040, 6.218548, 0.514182, 8.177568, 8.743426, 6.702377], [6.583244, 8.563817, 8.850064, 8.168202, 3.774505, 3.243377, 1.418502, 0.164553, 6.620187, 7.645600], [4.294520, 4.096002, 7.033737, 5.269836, 2.815818, 7.391683, 4.727818, 4.760712, 0.581497, 0.095187]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index
        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        // Debug: Print the value
        %fmt = arith.constant "Value at [1,1]: %f
" : !string.constant
        call @printf(%fmt, %element_f64) : (!string.constant, f64) -> ()
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[1.071579, 7.704454, 3.150399, 4.684923, 4.633571, 7.350009, 9.992149, 4.805293, 0.690544, 7.374526, 5.005696, 3.329259, 5.476576, 1.700319, 7.194458, 8.945383, 3.299404, 6.353295, 3.683304, 2.084730, 9.053611, 7.038205, 3.613595, 9.099651, 7.943227, 6.392344, 5.492319, 4.178669, 0.419883, 2.639927]> : tensor<30xf64>
        %row_ptr = arith.constant dense<[0, 7, 8, 11, 15, 16, 18, 22, 23, 25, 30]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 3, 5, 6, 7, 9, 6, 1, 5, 7, 0, 3, 6, 9, 8, 5, 8, 0, 3, 6, 9, 7, 3, 9, 0, 1, 3, 6, 9]> : tensor<30xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
