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
        %dense = arith.constant dense<[[1.425419, 8.365521, 8.347309, 4.648867, 6.214818, 1.812055, 0.043711, 6.327117, 6.012792, 0.608415], [7.847584, 0.300720, 4.244143, 3.177405, 9.565256, 8.356587, 4.137127, 8.921590, 9.786908, 4.931564], [5.990957, 7.798906, 0.128977, 1.564970, 9.805462, 5.272766, 4.650051, 7.657695, 8.083980, 8.303152], [7.938268, 2.169287, 3.460368, 0.266080, 8.090595, 8.946514, 6.360967, 2.579062, 5.403245, 9.237247], [3.381265, 9.515928, 5.314836, 0.076569, 2.895874, 9.780244, 2.399916, 8.615584, 7.360539, 8.804268], [6.332877, 7.110875, 5.166468, 3.596041, 8.804215, 8.414221, 5.185663, 3.143899, 4.942088, 9.156279], [0.448470, 3.073605, 8.567858, 2.289941, 5.540880, 4.801963, 3.854452, 6.017203, 1.885429, 0.382869], [1.522699, 1.511821, 3.122043, 3.820186, 9.318881, 2.067836, 4.644478, 7.886029, 6.410489, 1.510967], [3.083438, 2.203935, 1.919371, 9.294545, 8.199302, 1.037653, 1.090556, 2.714874, 0.754903, 1.111510], [6.623438, 0.337237, 7.778811, 1.498074, 6.176320, 5.349895, 0.702601, 9.595304, 8.756335, 2.699586]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[91.412432, 50.808863, 98.441808, 29.259576, 110.208702, 92.652106, 44.143819, 93.997333, 106.072336, 75.327874], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [127.448308, 57.637860, 146.393674, 36.090078, 157.476365, 142.643037, 74.882052, 137.918685, 140.780070, 105.388024], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [81.695078, 39.410740, 132.698639, 32.162968, 115.286174, 101.445560, 49.349169, 125.842131, 104.223695, 54.615969], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [81.964649, 101.864367, 157.971438, 57.690205, 147.768474, 108.369641, 58.978379, 128.275753, 120.175884, 70.527927]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[4.219528, 6.323832, 5.314092, 3.018632, 8.774544, 3.483513, 7.840121, 1.378644, 3.350104, 5.868968, 7.625021, 8.748246, 5.985681, 4.778139, 2.994810]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 3, 7, 7, 7, 11, 11, 11, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 9, 0, 3, 6, 9, 0, 3, 6, 9, 0, 3, 6, 9]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
