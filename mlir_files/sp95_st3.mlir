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
            [[5.298421, 9.274973, 0.225442, 7.507898, 1.073181, 4.602206, 1.723739, 3.650765, 6.334652, 0.565317], [3.478045, 6.206488, 5.261242, 1.001018, 9.723782, 6.744796, 0.881608, 5.624069, 3.046349, 1.590355], [0.168480, 9.323258, 2.843494, 4.051871, 0.072679, 3.964392, 0.440736, 4.750055, 0.125319, 2.768092], [4.438925, 1.110998, 2.073933, 3.074577, 3.281231, 8.035515, 7.310431, 0.771814, 8.540147, 4.412003], [2.840740, 2.052170, 3.905982, 2.252026, 8.697378, 9.075221, 0.333801, 9.518105, 7.203090, 0.222683], [1.724549, 6.276859, 9.787548, 3.697926, 0.407337, 4.334995, 5.575193, 3.167377, 2.451924, 5.528577], [6.047033, 6.674411, 7.691725, 0.971501, 3.169571, 2.037959, 5.175797, 9.317682, 5.929153, 7.370158], [0.271089, 5.453023, 7.423978, 5.383858, 0.674619, 9.143832, 5.845478, 1.990809, 7.400885, 3.735637], [5.422422, 8.725137, 6.845245, 3.999459, 0.194303, 4.111067, 0.886122, 0.920611, 9.450069, 4.166783], [2.944695, 7.830546, 2.513098, 3.430454, 6.237600, 0.121464, 4.925078, 0.857280, 3.741596, 2.376664]]
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
        %values = arith.constant dense<[0.704456, 5.654189, 4.588198, 3.602083, 4.447274]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 3, 0, 3, 9]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
