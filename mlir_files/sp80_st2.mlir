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
        %dense = arith.constant dense<[[6.406872, 5.514524, 0.403592, 3.195573, 0.860406, 9.470775, 6.725290, 7.831505, 6.235419, 2.751541], [6.194686, 9.170864, 6.968791, 8.798042, 5.468543, 9.566465, 4.823183, 2.591129, 8.512064, 1.066290], [0.063601, 2.178194, 1.610779, 0.203527, 4.910805, 5.522171, 8.164173, 0.252164, 4.448801, 8.364619], [6.508003, 6.073621, 3.931766, 1.654977, 6.135873, 2.539883, 9.199866, 3.063160, 5.750035, 5.887021], [4.198087, 0.522212, 3.029837, 3.404805, 4.130223, 1.179909, 3.739896, 9.983870, 3.715568, 2.633919], [9.585129, 7.054233, 9.955912, 3.888100, 0.396366, 2.780880, 1.290249, 6.290231, 4.124601, 0.604581], [2.371262, 4.575636, 4.116205, 1.788324, 5.467154, 7.881950, 0.411500, 3.325702, 0.670406, 2.029751], [1.252092, 1.184603, 7.897405, 1.352881, 4.177068, 5.567633, 3.475949, 0.547206, 1.594454, 1.148242], [8.775353, 8.252373, 3.162023, 7.927096, 1.047192, 2.201060, 3.828574, 3.986837, 4.079672, 8.168105], [0.839088, 9.775864, 6.412531, 7.972472, 8.688456, 0.513061, 2.938823, 2.633059, 3.281236, 1.109261]]> : tensor<10x10xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<10x10xf64, #CSR>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
        %expected = arith.constant dense<[[41.463687, 54.681205, 41.382620, 35.496140, 58.363926, 72.047704, 50.052270, 44.819301, 37.288250, 68.573200], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [81.304255, 48.631340, 33.094706, 52.037640, 47.914870, 86.408543, 79.835506, 139.486342, 75.431952, 45.537518], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [29.123063, 35.823316, 39.046492, 23.529762, 72.957845, 76.018204, 80.640052, 59.433175, 53.716518, 81.216640], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [38.221925, 26.343239, 24.302692, 26.165146, 33.454650, 46.500324, 31.959221, 68.339783, 31.423274, 22.529870], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [72.141752, 57.609121, 34.708600, 53.067603, 54.340026, 79.558061, 100.098464, 99.058779, 79.481212, 89.497830], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
        %values = arith.constant dense<[3.970173, 1.594932, 5.432082, 2.465385, 6.888770, 0.310633, 8.143706, 1.248721, 0.381360, 7.401174, 4.351037, 3.349685, 2.243030, 4.229016, 2.571348, 4.128473, 5.138450, 5.549482, 2.514672]> : tensor<19xf64>
        %row_ptr = arith.constant dense<[0, 4, 4, 8, 8, 12, 12, 15, 15, 19, 19]> : tensor<11xindex>
        %col_ind = arith.constant dense<[2, 4, 6, 8, 0, 2, 4, 6, 0, 2, 4, 6, 0, 4, 6, 0, 2, 4, 8]> : tensor<19xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<11xindex>, tensor<19xindex>), tensor<19xf64> to tensor<10x10xf64, #CSR>
        return %s : tensor<10x10xf64, #CSR>
    }

}
