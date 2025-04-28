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
        %dense = arith.constant dense<[[5.975006, 5.681424, 8.581907, 2.942202, 0.593843, 9.661057, 0.560566, 9.223109, 7.560540, 8.464207], [7.562745, 4.056683, 0.382561, 2.556025, 5.364971, 1.864278, 2.192875, 2.244043, 0.598727, 9.655039], [1.560231, 2.851910, 2.394249, 4.705674, 9.799102, 5.691218, 4.525129, 0.625965, 8.739812, 2.997603], [2.450813, 4.462923, 1.882224, 4.955734, 6.027804, 3.044184, 6.563558, 4.899713, 0.596121, 3.599191], [0.284924, 9.775972, 0.403389, 5.600513, 0.882027, 7.077162, 7.271301, 6.797086, 5.364254, 6.190650], [3.820209, 8.175696, 3.660852, 3.206492, 8.907771, 6.414044, 5.780798, 4.059481, 9.601664, 4.969703], [9.292470, 4.882899, 8.734271, 0.266593, 2.697820, 7.078212, 5.372078, 6.344902, 0.147998, 1.557508], [0.687462, 5.927490, 7.407128, 5.032138, 4.485381, 3.121089, 3.446504, 5.353330, 9.351595, 8.092805], [2.742466, 2.542861, 5.904440, 0.162712, 0.239963, 7.120838, 0.045751, 4.295443, 4.835903, 8.591568], [4.943195, 8.681991, 4.918518, 6.265321, 9.764974, 7.444813, 8.334817, 9.605309, 5.332716, 4.425375]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[76.696851, 163.272677, 102.427476, 113.110332, 176.391431, 125.616459, 144.418433, 149.028958, 141.227374, 113.999571], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [27.636965, 14.522350, 25.976812, 0.792880, 8.023654, 21.051486, 15.977230, 18.870531, 0.440166, 4.632222], [117.427778, 81.284616, 56.205653, 31.776452, 83.628047, 68.685025, 61.218047, 61.019952, 34.988579, 100.773544], [0.614627, 21.088316, 0.870173, 12.081191, 1.902670, 15.266557, 15.685345, 14.662388, 11.571543, 13.354209], [2.583357, 88.636983, 3.657451, 50.778843, 7.997176, 64.167359, 65.927580, 61.627956, 48.636727, 56.129509], [4.014291, 105.508736, 17.423429, 63.430370, 16.728203, 74.246407, 76.720682, 75.606779, 69.023805, 74.731520], [93.679146, 108.732505, 42.623978, 60.270895, 126.219212, 78.531138, 80.543914, 75.768846, 80.131949, 112.947037], [51.169625, 48.424640, 80.488339, 20.970712, 4.969628, 92.295843, 4.047948, 79.207274, 69.607430, 89.233859], [4.783310, 91.178977, 33.345615, 58.993752, 24.543510, 61.175071, 63.843638, 68.484014, 75.222424, 75.661379]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.604913, 5.275223, 4.292538, 9.054563, 2.974125, 8.085655, 3.065895, 4.795890, 2.157158, 9.066820, 9.686258, 1.824743, 6.968868, 5.794311, 3.811279, 6.930779, 3.558176, 6.822524, 4.130276]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 5, 8, 9, 10, 12, 15, 17, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 5, 7, 9, 6, 1, 5, 6, 4, 4, 4, 7, 1, 5, 9, 0, 8, 4, 7]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> -> tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
