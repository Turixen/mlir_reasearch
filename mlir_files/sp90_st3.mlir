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
        %dense = arith.constant dense<[[1.861398, 3.838551, 0.835253, 9.800880, 9.177190, 6.096455, 2.003157, 9.605704, 0.564558, 1.308378], [1.958023, 9.176035, 2.763343, 9.489965, 4.260096, 0.967676, 9.143999, 9.165930, 3.716117, 9.692739], [0.468635, 8.192861, 6.831174, 4.616720, 4.572760, 0.237547, 7.626167, 9.483803, 2.189328, 0.871506], [5.583256, 2.610619, 6.919147, 5.129877, 3.831941, 9.812384, 8.909585, 4.939252, 6.918513, 1.408342], [9.444150, 5.258375, 3.884540, 0.692855, 8.291857, 8.395279, 3.613797, 4.241265, 8.254329, 9.453407], [6.286008, 0.819444, 3.111475, 1.420311, 1.517484, 2.887712, 2.621305, 4.949628, 3.892736, 1.994937], [4.565059, 0.331960, 1.341878, 2.565437, 4.805450, 5.167869, 3.155685, 4.228163, 1.620063, 7.821353], [8.447825, 6.559503, 3.034225, 7.146169, 8.684866, 4.170859, 7.993613, 3.916036, 8.391774, 6.894991], [1.264465, 1.210115, 4.997680, 1.703006, 1.601519, 4.312832, 4.319219, 2.539271, 1.760310, 1.162653], [4.275738, 0.397755, 6.284234, 4.057118, 1.686973, 2.447897, 2.179248, 4.886544, 3.466085, 8.017828]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[47.495508, 26.265299, 20.881342, 77.376153, 88.066963, 79.466430, 41.904305, 87.579367, 21.296381, 62.697270], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [42.526671, 39.264105, 44.195898, 117.748560, 98.106415, 72.807507, 31.832155, 120.639739, 25.376934, 58.725921], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [48.136432, 4.033111, 44.993808, 37.200705, 33.407158, 39.814544, 28.511602, 50.267402, 29.038547, 86.719184], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [57.273611, 4.844179, 56.169307, 45.129082, 38.273682, 46.118201, 33.516698, 60.294577, 35.571904, 103.542845]]> : tensor<10x10xf64>

        // Validate each element
        %false = arith.constant "false" : i1
        %flag = scf.for %i = %c0 to %rows step %c1 iter_args(%f_iter = %false) -> (i1) {
            %flag_row = scf.for %j = %c0 to %cols step %c1 iter_args(%f_in = %f_iter) -> (i1) {
                %cmp_c = tensor.extract %computed[%i, %j] : tensor<10x10xf64>
                %cmp_e = tensor.extract %expected[%i, %j] : tensor<10x10xf64>
                %neq = arith.cmpf une, %cmp_c, %cmp_e : f64
                %new_f = arith.ori %f_in, %neq : i1
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
        %values = arith.constant dense<[5.560077, 1.007655, 6.904620, 9.632807, 5.752502, 4.798128, 6.135244, 5.218019, 7.823924]> : tensor<9xf64>
        %row_ptr = arith.constant dense<[0, 3, 3, 3, 5, 5, 5, 7, 7, 7, 9]> : tensor<11xindex>
        %col_ind = arith.constant dense<[0, 3, 6, 0, 9, 6, 9, 6, 9]> : tensor<9xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
