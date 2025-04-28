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
            [[3.268809, 2.366994, 1.511381, 8.457248, 3.586576, 3.866482, 8.829010, 4.554089, 8.261532, 4.143180], [5.923530, 4.027349, 4.432322, 2.506118, 3.642748, 8.342588, 3.663183, 2.658834, 0.264397, 8.149446], [1.180281, 3.722713, 5.158806, 8.766346, 9.692534, 2.441857, 9.224337, 4.203955, 7.678127, 3.983368], [8.772082, 5.347847, 6.234493, 3.625468, 9.493077, 7.515282, 6.977928, 9.332651, 8.869543, 6.510559], [8.654987, 1.177567, 8.588286, 1.870480, 5.395042, 5.263400, 4.481713, 1.454628, 7.633296, 8.455632], [2.542691, 2.731702, 4.326643, 6.907850, 5.855318, 6.517119, 7.369040, 1.009385, 0.931828, 1.108976], [4.618480, 3.250310, 7.948682, 9.015247, 5.092184, 0.727489, 3.633100, 4.937554, 4.065137, 7.696316], [1.067146, 6.211971, 9.659582, 5.415782, 7.027065, 7.356965, 7.357165, 6.571069, 5.503949, 6.055930], [0.809370, 2.584357, 6.794087, 6.483795, 9.880918, 2.008409, 5.872983, 0.867834, 3.244107, 9.074406], [5.098362, 5.888905, 5.967207, 5.622046, 2.560345, 3.414508, 1.726014, 0.290618, 2.258794, 8.393163]]
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
        %values = arith.constant dense<[1.157675, 2.464667, 7.481632, 5.753269, 7.354889, 5.426777, 7.472296, 1.542328, 7.065837, 3.785804, 7.876802, 9.947313, 7.870250, 2.275500, 8.880312, 9.290809, 1.498193, 4.300138, 8.333258]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 4, 8, 9, 9, 14, 15, 15, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 9, 0, 3, 6, 9, 4, 0, 2, 3, 6, 9, 7, 0, 3, 6, 9]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }
    
}
