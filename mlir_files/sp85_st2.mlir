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

    func.func @main() -> i64 {
        %c = tensor.empty() : tensor<10x10xf64>
        %t_sparse = call @assemble_sparse() : () -> tensor<10x10xf64, #CSR>
        %s = arith.constant dense<[
            [[6.676684, 1.943353, 3.016825, 7.071883, 3.327360, 0.393630, 6.200442, 5.765842, 5.201615, 0.047437], [8.683395, 6.495594, 5.880223, 7.561103, 6.712469, 3.073416, 2.105115, 7.837237, 1.606499, 0.394231], [3.341175, 4.372504, 6.174277, 9.620600, 0.949768, 3.601277, 1.284758, 4.064256, 3.790664, 5.346092], [6.805216, 0.589775, 9.904143, 2.413501, 6.743983, 7.038205, 0.961913, 0.741050, 3.454173, 8.797614], [6.849858, 5.494427, 6.402922, 0.438445, 3.050602, 8.952243, 7.423681, 1.813257, 6.278715, 4.792470], [7.256606, 0.829558, 6.399641, 4.613375, 2.637946, 5.035807, 8.873877, 7.993591, 8.884946, 7.944590], [7.078259, 9.720162, 1.524443, 6.208790, 5.800373, 5.913783, 5.344644, 1.809281, 2.624866, 4.754589], [8.336398, 6.008554, 8.501220, 1.031077, 7.498129, 5.220073, 1.448916, 7.852796, 4.353958, 1.251763], [0.528786, 2.680530, 5.294775, 7.566633, 4.036553, 9.520526, 0.174299, 5.271806, 3.029978, 8.031348], [3.428499, 2.776378, 6.690059, 7.410890, 1.909641, 9.672776, 6.232714, 3.757244, 4.746626, 4.201433]]
        ]> : tensor<10x10xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %c1 = arith.constant 1 : index

        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<10x10xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }

    func.func @assemble_sparse() -> tensor<10x10xf64, #CSR> {
        %values = arith.constant dense<[5.363406, 8.799915, 2.194768, 5.679140, 5.970183, 1.438464, 3.164510, 6.362044, 0.533065, 0.412855, 1.042408, 8.695095, 8.789204, 7.778031, 2.363945]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 6, 6, 8, 8, 11, 11, 15, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 6, 8, 0, 2, 8, 0, 8, 2, 6, 8, 0, 2, 4, 6]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
