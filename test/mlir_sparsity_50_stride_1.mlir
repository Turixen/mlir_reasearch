// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 50 non-zeros (0.50 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 1418184.573025

#CSC = #sparse_tensor.encoding<{
map = (d0, d1) -> (d1: dense, d0: compressed)
}>

module {
func.func @sparse_dense_matmul(
    %sparse : tensor<10x10xf64, #CSC>,
    %dense : tensor<10x10xf64>,
    %init : tensor<10x10xf64>
) -> tensor<10x10xf64> {
    %result = linalg.matmul
    ins(%sparse, %dense: tensor<10x10xf64, #CSC>, tensor<10x10xf64>)
    outs(%init: tensor<10x10xf64>) -> tensor<10x10xf64>
    return %result : tensor<10x10xf64>
}

// Function to compute the sum of all elements in a tensor
func.func @compute_sum(%tensor: tensor<10x10xf64>) -> f64 {
%c0 = arith.constant 0 : index
%c1 = arith.constant 1 : index
%rows = arith.constant 10 : index
%cols = arith.constant 10 : index
%init = arith.constant 0.0 : f64 // Keep init as 0.0 (float)

%sum = scf.for %i = %c0 to %rows step %c1 iter_args(%sum_iter = %init) -> (f64) {
    %inner_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%inner_sum_iter = %sum_iter) -> (f64) {
    %elem = tensor.extract %tensor[%i, %j] : tensor<10x10xf64>
    %new_sum = arith.addf %inner_sum_iter, %elem : f64
    scf.yield %new_sum : f64
    }
    scf.yield %inner_sum : f64
}
return %sum : f64
}

func.func @main() -> i32 { // Return status code (0 for success, 1 for failure)
    %output = tensor.empty() : tensor<10x10xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<10x10xf64, #CSC>
    %dense_tensor = arith.constant dense<[[13.351665, 40.076962, 69.499333, 17.936831, 65.356555, 94.028513, 41.718296, 20.607654, 71.506000, 53.983105], [24.619857, 38.390831, 77.727586, 93.355914, 21.098584, 23.411194, 5.681907, 15.669148, 94.602312, 1.429808], [78.997708, 36.896157, 69.061896, 20.586251, 66.523204, 70.980638, 20.334158, 0.946384, 68.728080, 87.199935], [69.877960, 12.395895, 53.204405, 85.256339, 9.597895, 63.153278, 7.709871, 10.453214, 54.265093, 99.474065], [50.194224, 93.306051, 74.702887, 99.435166, 50.940682, 31.021908, 84.246194, 60.717037, 76.415397, 95.352042], [28.047289, 42.276766, 77.126542, 33.728736, 18.047399, 50.867215, 83.084641, 31.258760, 71.688401, 97.459456], [3.937482, 62.779542, 19.957193, 34.771719, 96.412153, 56.907879, 46.595904, 12.480584, 7.676487, 49.083333], [58.604906, 0.628715, 18.227022, 93.484392, 11.009878, 67.032077, 77.152826, 77.491121, 63.928712, 71.904673], [81.642808, 53.546919, 41.038460, 58.006254, 82.129322, 32.054909, 66.136536, 59.669463, 86.104349, 58.298880], [2.650431, 90.402808, 74.288290, 27.891015, 25.585209, 3.318964, 83.243198, 88.433484, 52.232115, 48.974467]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[4562.765025, 658.279678, 2290.985609, 6778.714139, 1261.670495, 5074.683299, 4142.256492, 4050.896796, 4453.366717, 6164.163108], [7889.335538, 18203.801099, 17264.809478, 20604.874315, 14761.776600, 10972.501588, 14793.482140, 8959.298134, 17600.013981, 16166.590131], [18891.927627, 21033.458575, 27822.049618, 26364.114234, 16406.391260, 18599.268516, 17143.003069, 11447.199327, 28061.010949, 29283.046092], [14342.153806, 10656.354478, 16166.275074, 16744.706649, 9852.878890, 14279.907217, 16151.462784, 13648.378747, 20490.222912, 19080.016499], [12041.372627, 6709.896656, 9165.223117, 12028.296066, 9196.651382, 8528.484935, 7055.451712, 6469.354613, 13497.506776, 12070.899697], [5602.221022, 5876.301975, 7589.131263, 4748.648782, 8108.131957, 7782.523544, 7582.146183, 4916.113522, 9905.939205, 8156.273688], [5680.684433, 17792.199750, 17119.657183, 13982.572088, 18297.900730, 19023.749342, 19962.557354, 15151.181131, 17209.147640, 18286.277613], [19186.660628, 18728.842280, 20149.478613, 17997.563829, 16953.377436, 15013.277688, 22207.288362, 19655.859515, 24310.704755, 25000.193036], [17574.574611, 9245.768255, 15216.467114, 18040.437299, 11813.001827, 12620.472050, 7357.608987, 6661.813421, 19837.508549, 17455.477231], [22820.217170, 11821.641171, 18467.455011, 21209.825015, 17959.768510, 22435.522886, 17949.279655, 15042.755628, 26724.063318, 26073.082501]]> : tensor<10x10xf64>
    
    // --- Simplified Validation Start ---
    
    // Compute the total absolute error
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 10 : index
    %cols = arith.constant 10 : index
    %init_error = arith.constant 0.0 : f64
    
    // Tolerance for floating-point comparisons
    %tolerance = arith.constant 1.0e-10 : f64
    
    %total_error = scf.for %i = %c0 to %rows step %c1 iter_args(%error_iter = %init_error) -> (f64) {
        %row_error = scf.for %j = %c0 to %cols step %c1 iter_args(%row_error_iter = %error_iter) -> (f64) {
            %computed_elem = tensor.extract %computed_result[%i, %j] : tensor<10x10xf64>
            %expected_elem = tensor.extract %expected_result[%i, %j] : tensor<10x10xf64>
            
            // Compute absolute difference
            %diff = arith.subf %computed_elem, %expected_elem : f64
            %abs_diff = math.absf %diff : f64
            
            // Add to running error
            %new_error = arith.addf %row_error_iter, %abs_diff : f64
            scf.yield %new_error : f64
        }
        scf.yield %row_error : f64
    }
    
    // Check if total error is within tolerance
    %error_within_tolerance = arith.cmpf olt, %total_error, %tolerance : f64
    
    // Return 0 if validation passes, 1 otherwise
    %return_status = scf.if %error_within_tolerance -> (i32) {
        %success = arith.constant 0 : i32
        scf.yield %success : i32
    } else {
        %failure = arith.constant 1 : i32
        scf.yield %failure : i32
    }
    
    // --- Simplified Validation End ---
    
    return %return_status : i32
}

func.func private @assemble_sparse_tensor() -> tensor<10x10xf64, #CSC> {
    // Sparse tensor assembly data - Use the helper for values
    %values = arith.constant dense<[15.964194, 52.252813, 97.717251, 50.989651, 79.042726, 77.327900, 38.476074, 15.476520, 13.881680, 52.971621, 14.049643, 83.639668, 71.966293, 98.694582, 45.108067, 82.441212, 24.646737, 68.527086, 60.772146, 86.538796, 39.025153, 94.013475, 83.234970, 29.838823, 32.412960, 43.564304, 31.588127, 23.676286, 4.005587, 5.137109, 80.072963, 28.575900, 91.547378, 1.779679, 48.123514, 88.159368, 57.072760, 67.761213, 91.826837, 18.816371, 88.195898, 51.939705, 69.457701, 81.486969, 87.502043, 30.168015, 45.634830, 81.751130, 94.481582, 10.730198]> : tensor<50xf64>
    %row_indices = arith.constant dense<[4, 5, 6, 9, 1, 2, 3, 4, 6, 8, 9, 2, 3, 7, 8, 9, 0, 2, 4, 8, 9, 1, 2, 7, 1, 2, 3, 5, 6, 0, 1, 2, 6, 8, 0, 3, 6, 7, 9, 3, 4, 5, 7, 8, 9, 2, 3, 6, 7, 9]> : tensor<50xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 4, 11, 16, 21, 24, 29, 34, 39, 45, 50]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
