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
            [[8.162405, 7.899530, 3.279290, 8.061833, 2.360137, 6.077229, 6.782950, 0.638737, 8.985757, 8.906254], [2.185510, 7.646740, 6.649538, 9.541561, 5.501288, 2.048687, 6.492103, 2.600735, 3.905676, 6.007522], [1.903546, 2.857958, 4.451228, 6.604133, 9.768270, 3.653321, 0.445177, 5.839857, 5.813317, 2.938532], [4.691539, 9.201273, 4.607929, 1.427893, 8.427102, 9.270657, 1.873012, 4.285893, 8.826725, 5.266554], [4.167753, 4.811511, 8.122855, 1.202463, 7.092478, 3.496463, 4.034722, 0.809025, 8.543888, 1.159653], [8.611162, 5.897140, 4.212989, 5.975768, 1.985358, 8.558534, 1.325552, 1.786547, 7.882517, 4.784238], [3.082220, 8.891914, 6.311345, 8.433937, 5.452131, 4.594133, 3.004639, 9.490528, 9.795374, 9.103843], [0.940143, 3.817826, 0.161093, 8.930353, 1.898542, 4.113632, 5.071380, 3.708255, 0.455088, 7.471314], [6.856622, 3.943094, 0.412169, 1.191219, 6.379906, 5.659955, 8.812391, 7.919010, 6.104145, 8.451145], [1.358335, 2.866612, 6.898178, 5.661590, 3.678975, 8.314696, 7.605671, 7.801907, 0.878387, 9.819601]]
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
        %values = arith.constant dense<[2.276260, 2.249449, 3.852360, 3.854236, 8.804287, 9.618025, 5.068981, 0.600329, 2.016664, 9.826842, 6.974388, 3.550637, 4.325031, 0.102859, 9.589457, 4.536751, 5.838375, 9.951474, 8.241493, 2.311406, 8.103551, 3.548739, 9.666388, 9.642703, 5.353559, 4.591855, 4.088633, 7.929330, 2.746965, 4.969119, 0.443135, 0.544741, 5.779038, 5.414201, 0.974864, 4.168542, 1.235506, 3.581709, 6.518755, 0.284486, 0.038188, 3.347549, 3.384755, 4.333346, 0.649835, 1.719852, 7.870078, 1.525683, 0.573251, 0.994981]> : tensor<50xf64>
        %row_ptr = arith.constant dense<[0, 6, 9, 12, 16, 20, 27, 31, 37, 42, 50]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 4, 6, 7, 8, 0, 4, 9, 0, 6, 9, 5, 6, 8, 9, 0, 3, 5, 9, 0, 1, 2, 3, 4, 5, 6, 0, 1, 3, 7, 2, 3, 4, 5, 6, 8, 1, 2, 5, 6, 7, 1, 2, 4, 5, 6, 7, 8, 9]> : tensor<50xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
