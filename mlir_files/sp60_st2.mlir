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
            [[9.730576, 4.117794, 9.547352, 2.876575, 5.160262, 3.868966, 3.070354, 0.626604, 6.915573, 5.701263], [4.445312, 3.057280, 9.997596, 9.674379, 4.461256, 6.683368, 4.160389, 8.506741, 3.277598, 5.265023], [9.804159, 6.928363, 6.223112, 9.800139, 0.252746, 9.130208, 7.439502, 5.590992, 9.393187, 5.346021], [0.863260, 0.591224, 5.224983, 5.580540, 3.042100, 9.317933, 2.729494, 1.094263, 8.778297, 8.867076], [7.277922, 9.447029, 0.595281, 7.170054, 0.676109, 8.789899, 7.406216, 3.541902, 9.402346, 6.703311], [2.462240, 9.721723, 9.466790, 8.385505, 9.470793, 5.031132, 8.232991, 3.130907, 5.882591, 6.399236], [5.107743, 2.025653, 6.616512, 6.743090, 9.886876, 4.478023, 0.518206, 1.037257, 4.081151, 1.140293], [0.931066, 4.973161, 9.732538, 6.461716, 0.140145, 5.983365, 8.644188, 3.887489, 9.904548, 8.627215], [0.808638, 9.406808, 2.349236, 1.823603, 1.630941, 9.462686, 9.749849, 3.482492, 4.910838, 7.834678], [0.989661, 5.458587, 4.252237, 5.704371, 9.951944, 3.031215, 7.561244, 8.707349, 6.757713, 8.731680]]
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
        %values = arith.constant dense<[9.829716, 3.777815, 4.644835, 2.898785, 6.840127, 6.077987, 2.931493, 6.719877, 4.072149, 3.344425, 9.213291, 1.681975, 9.495170, 5.095290, 7.285994, 6.566153, 7.241883, 3.864432, 6.818708, 0.264312, 5.590110, 0.940301, 8.189887, 5.207471, 2.181441, 6.039548, 6.966539, 5.550547, 0.165793, 8.773657, 2.025560, 3.447250, 0.246717, 4.095097, 5.213090, 6.307713, 5.182522, 4.934083, 4.023157, 6.242135]> : tensor<40xf64>
        %row_ptr = arith.constant dense<[0, 8, 10, 16, 17, 22, 24, 30, 31, 38, 40]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 1, 2, 3, 4, 5, 6, 8, 3, 7, 0, 1, 2, 4, 6, 8, 9, 0, 2, 4, 6, 8, 4, 7, 0, 1, 2, 4, 6, 8, 9, 0, 2, 3, 4, 5, 6, 8, 3, 9]> : tensor<40xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<40xindex>), tensor<40xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
