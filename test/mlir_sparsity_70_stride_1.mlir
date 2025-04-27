// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 30 non-zeros (0.70 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 645644.983349

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
    %dense_tensor = arith.constant dense<[[73.735120, 84.470297, 43.150310, 18.704840, 74.962794, 26.702438, 91.068024, 78.869314, 81.154522, 8.193922], [29.187468, 77.359045, 41.214023, 43.668613, 11.459714, 1.470137, 41.622669, 52.266942, 39.934226, 97.313085], [11.187737, 30.752614, 49.397925, 98.466253, 62.105543, 82.185501, 38.213559, 77.006547, 97.097482, 10.945983], [51.766818, 76.419905, 95.340098, 17.898437, 19.250930, 36.193389, 89.620098, 39.403536, 44.172154, 46.022699], [16.632418, 44.234544, 37.865080, 83.250419, 61.343988, 85.249505, 26.209807, 63.453757, 1.691123, 18.752984], [96.505859, 87.389516, 5.870074, 88.269997, 37.981125, 49.678122, 47.452746, 80.454910, 47.861050, 79.381264], [4.768666, 68.626984, 60.543829, 57.646470, 11.991393, 87.641343, 3.254501, 56.052445, 49.031051, 7.014540], [97.322883, 72.703305, 14.046119, 5.437834, 38.142500, 18.697588, 87.806462, 93.097606, 68.122863, 45.493974], [80.921239, 95.508364, 86.284126, 38.844106, 72.903089, 30.690423, 67.303674, 16.830282, 40.347986, 14.453050], [88.721262, 15.463760, 96.285567, 17.463371, 48.150972, 96.345463, 12.772703, 93.708554, 20.592991, 19.173172]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[1875.347030, 5036.925718, 5255.126624, 10532.611257, 6998.181932, 9358.617238, 3984.721462, 8328.922952, 5590.714614, 2701.759787], [9685.459446, 19961.066822, 19996.721815, 21145.713410, 13679.015376, 18451.172730, 17451.504363, 20207.841915, 15729.566592, 14544.608615], [12712.269226, 9875.490368, 7895.456138, 3483.219469, 9409.632738, 7772.407259, 10538.204547, 13821.312166, 8995.908358, 3499.845453], [3758.550881, 3530.596367, 1446.290488, 961.636749, 2708.535007, 1349.746799, 4037.362874, 4071.993929, 3659.912303, 1227.303586], [124.733416, 331.733232, 283.965972, 624.329496, 460.044064, 639.321474, 196.558235, 475.866097, 12.682437, 140.636421], [1645.342577, 1960.917362, 2686.934125, 2008.801001, 1525.063200, 3353.413641, 857.120556, 2990.959429, 2067.721615, 561.467284], [3250.088071, 4797.888528, 5985.759415, 1123.721695, 1208.635590, 2272.337931, 5626.639307, 2473.881315, 2773.270575, 2889.453731], [7463.205152, 12081.801946, 11925.887856, 10192.743707, 9119.305684, 14486.053257, 7444.943556, 14696.603688, 13154.034708, 1991.744586], [8465.996133, 8716.424781, 2995.889584, 12236.786402, 6270.401904, 8250.040987, 5828.684685, 10504.507497, 8860.758462, 7052.523767], [7862.233996, 10938.711792, 10037.799462, 5083.530345, 7073.055921, 5211.060962, 6860.373796, 3196.249057, 5199.911479, 1823.156005]]> : tensor<10x10xf64>
    
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
    %values = arith.constant dense<[65.387269, 21.144288, 3.634813, 58.075116, 10.472228, 76.825590, 52.239646, 85.255134, 4.530225, 6.559382, 40.757655, 50.925033, 95.704285, 62.783231, 7.273642, 59.236474, 92.289454, 15.969052, 7.499416, 1.338123, 81.821564, 16.674527, 80.356144, 24.568178, 41.563464, 22.078994, 91.058211, 40.353924, 12.345323, 26.395611]> : tensor<30xf64>
    %row_indices = arith.constant dense<[2, 3, 5, 7, 0, 1, 0, 1, 3, 5, 7, 8, 1, 6, 9, 0, 1, 2, 4, 5, 8, 5, 7, 9, 2, 3, 9, 2, 5, 7]> : tensor<30xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 4, 6, 12, 15, 19, 21, 24, 26, 27, 30]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
