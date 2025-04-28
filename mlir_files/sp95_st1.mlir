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
        %dense = arith.constant dense<[[4.693558, 3.170313, 9.383508, 3.901920, 5.292352, 2.506160, 2.444220, 9.985814, 2.158635, 2.434437], [3.077736, 0.844165, 5.066246, 6.944459, 6.142635, 3.311763, 2.343249, 0.986384, 8.644368, 1.563008], [6.406338, 6.159133, 3.710346, 2.488477, 2.889516, 3.390555, 3.572433, 8.281635, 3.381206, 9.653847], [9.361261, 0.228037, 1.139922, 2.688105, 0.327443, 7.497774, 3.854048, 7.739874, 9.492411, 6.039778], [9.726569, 3.467184, 6.828557, 0.402467, 3.980556, 2.858564, 9.450075, 0.419556, 6.694858, 2.949887], [0.148072, 5.950979, 3.429264, 9.309664, 9.320557, 5.798480, 4.344628, 6.248638, 3.658326, 1.550779], [6.460464, 2.880013, 7.344125, 7.684248, 2.905303, 5.756700, 5.760546, 7.085347, 5.261915, 2.852359], [4.294895, 4.838090, 5.892779, 3.715521, 9.703529, 4.340276, 5.985472, 2.406389, 6.692733, 1.496201], [6.304835, 1.631920, 8.102741, 4.498150, 9.561448, 6.079490, 2.941170, 9.617482, 1.609230, 8.469141], [0.896655, 1.885039, 1.003868, 6.068831, 3.448773, 3.000069, 6.148555, 3.327898, 0.629840, 7.006700]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[10.489623, 50.715276, 29.462567, 68.791945, 69.459961, 45.562952, 35.661876, 55.929542, 30.579108, 25.093721], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [29.282445, 8.031620, 48.201690, 66.071545, 58.442762, 31.509048, 22.294332, 9.384737, 82.244956, 14.870902], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [64.936382, 1.581830, 7.907310, 18.646615, 2.271381, 52.009906, 26.734424, 53.689282, 65.846129, 41.896205], [0.588088, 23.635100, 13.619775, 36.974557, 37.017822, 23.029428, 17.255262, 24.817289, 14.529526, 6.159125]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant false : i1
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
        %values = arith.constant dense<[1.475708, 6.994848, 9.514282, 6.936713, 3.971632]> : tensor<5xf64>
        %row_ptr = arith.constant dense<[0, 2, 2, 2, 3, 3, 3, 3, 3, 4, 5]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 5, 1, 3, 5]> : tensor<5xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<5xindex>), tensor<5xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
