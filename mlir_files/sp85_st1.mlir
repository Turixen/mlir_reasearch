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
        %dense = arith.constant dense<[[3.845814, 0.998486, 2.826821, 4.205271, 7.989307, 8.698611, 4.545900, 3.263836, 5.041128, 3.245077], [2.688517, 4.733618, 6.458877, 2.346601, 0.306499, 0.515546, 3.886595, 3.448550, 7.221901, 4.266722], [8.261479, 5.026103, 5.053444, 9.890271, 3.194520, 2.141344, 5.644986, 6.554946, 3.441469, 9.834974], [2.540583, 3.233101, 4.182430, 6.256182, 1.910986, 5.018794, 9.586773, 5.235255, 5.777431, 7.995104], [5.240069, 8.021278, 6.223756, 8.934435, 6.662558, 7.419127, 8.481459, 3.041583, 5.613556, 0.690264], [7.139875, 8.759244, 7.971595, 9.639943, 7.658939, 7.696715, 8.408586, 7.351497, 1.168950, 8.306682], [3.399299, 5.522290, 2.013877, 3.799474, 2.849408, 4.151445, 4.702691, 1.380485, 7.194776, 5.027726], [0.655467, 6.405241, 1.063007, 2.980886, 1.605056, 0.426623, 8.166447, 4.314619, 3.019517, 3.494864], [8.948679, 6.095107, 1.312458, 0.593788, 7.767453, 3.492253, 1.855690, 6.098425, 0.645889, 5.335773], [4.357767, 4.306008, 3.197343, 1.384088, 4.822277, 9.436392, 2.997500, 8.276791, 4.963902, 1.647013]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[19.132653, 24.347873, 31.497089, 47.114125, 14.391279, 37.795594, 72.196180, 39.425718, 43.508743, 60.209619], [86.855586, 107.942430, 86.027781, 101.132325, 90.955354, 109.472766, 98.216226, 93.733850, 49.110250, 94.356573], [14.228471, 30.043563, 9.304861, 18.820469, 13.296396, 16.891650, 29.103071, 11.030910, 32.232897, 24.321146], [36.356938, 55.653672, 43.182007, 61.989390, 46.226530, 51.475794, 58.846525, 21.103279, 38.948286, 4.789229], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [79.425028, 87.515216, 102.367167, 94.277113, 32.611377, 35.316321, 93.909206, 79.688382, 103.700361, 105.181939], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [16.328057, 16.720084, 12.470344, 6.684206, 18.246557, 34.547662, 12.236329, 29.588014, 18.525941, 5.905291], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [29.511056, 7.661933, 21.691759, 32.269374, 61.306374, 66.749259, 34.883203, 25.045223, 38.683366, 24.901274]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[7.530811, 8.745829, 3.334648, 3.000617, 3.935529, 1.297443, 6.938255, 9.493757, 4.882604, 1.831958, 1.357508, 0.200665, 0.206075, 3.499088, 7.673553]> : tensor<15xf64>
        %row_ptr = arith.constant dense<[0, 1, 4, 6, 7, 7, 12, 12, 14, 14, 15]> : tensor<11xindex>
        %col_ind = arith.constant dense<[3, 5, 6, 9, 6, 7, 4, 1, 2, 3, 4, 8, 4, 9, 0]> : tensor<15xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<15xindex>), tensor<15xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
