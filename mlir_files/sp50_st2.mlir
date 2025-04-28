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
            [[6.300746, 0.095454, 6.301140, 4.925785, 7.202145, 3.689914, 8.025648, 2.592288, 9.227568, 0.708403], [1.895808, 8.158029, 5.389560, 3.913333, 3.320919, 1.642243, 1.293326, 4.867219, 1.150269, 3.560129], [4.641952, 4.925808, 9.631036, 7.046134, 4.172494, 8.432477, 0.135594, 0.879872, 4.773809, 7.403112], [6.683074, 8.060562, 0.737185, 3.683966, 2.839218, 6.760344, 9.559903, 4.183427, 8.264569, 8.000198], [2.974602, 5.695074, 5.222602, 1.663802, 0.213717, 4.672261, 1.451478, 2.576022, 0.821512, 5.436174], [2.278101, 3.089570, 6.346816, 8.973821, 9.213145, 1.954751, 9.475992, 9.834986, 3.925232, 9.178517], [9.992417, 7.922716, 5.562135, 6.725512, 9.739471, 3.950170, 4.657316, 2.023740, 5.202612, 8.433901], [1.893387, 3.485289, 9.535554, 5.995487, 8.377051, 3.512177, 9.612181, 0.725501, 9.469956, 2.674641], [4.865013, 7.110349, 9.015357, 2.217966, 0.113141, 7.297067, 0.270948, 5.935203, 1.191764, 4.580354], [3.123418, 5.668198, 9.082723, 4.836276, 0.837607, 1.491901, 6.622928, 0.043321, 3.891797, 5.143054]]
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
        %values = arith.constant dense<[2.330687, 3.563120, 7.401414, 9.792863, 5.110740, 2.016839, 4.383714, 3.920015, 9.250755, 1.937274, 0.134508, 5.714349, 0.811224, 8.108470, 7.971786, 5.953473, 8.487185, 4.034325, 6.174194, 9.701985, 0.835499, 9.284296, 4.573010, 2.860848, 6.028523, 2.481681, 3.172334, 7.277665, 8.883246, 3.560217, 9.173851, 9.129967, 7.269483, 1.896264, 9.961065, 2.353554, 9.742996, 1.345781, 7.388628, 9.084745, 3.296205, 8.876298, 2.934234, 4.105885, 6.262899, 5.230438, 5.145070, 9.629497, 5.172026, 1.955518]> : tensor<50xf64>
        %row_ptr = arith.constant dense<[0, 7, 10, 16, 19, 26, 30, 36, 41, 47, 50]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 2, 4, 6, 7, 8, 3, 5, 6, 0, 1, 2, 4, 6, 8, 4, 7, 9, 0, 2, 3, 4, 6, 7, 8, 2, 6, 7, 8, 0, 2, 3, 4, 6, 8, 1, 2, 3, 5, 9, 0, 1, 2, 4, 6, 8, 2, 3, 6]> : tensor<50xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
