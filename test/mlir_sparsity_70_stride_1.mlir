// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 30 non-zeros (0.70 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 7365.220577

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
    %dense_tensor = arith.constant dense<[[9.511272, 5.077780, 8.242229, 3.750484, 2.953866, 7.370506, 3.469036, 1.095926, 2.973281, 8.264766], [9.443554, 9.402847, 8.574416, 5.536494, 0.567424, 9.468823, 4.693720, 3.929670, 3.274539, 6.035938], [1.241912, 4.961260, 2.922747, 1.482278, 2.669456, 4.322902, 2.891530, 7.778187, 2.293084, 0.561541], [3.818636, 7.337519, 0.195664, 1.902532, 0.535959, 8.905388, 4.340283, 1.471373, 3.338770, 3.942800], [9.882765, 9.566205, 9.858783, 7.475003, 1.626424, 8.847420, 7.173000, 5.921320, 1.278427, 7.003030], [7.559846, 9.016854, 0.696112, 0.834487, 4.436750, 9.133803, 3.940440, 4.690816, 6.540512, 7.216584], [2.062917, 3.355634, 1.113179, 4.681831, 4.084419, 0.719237, 7.080932, 4.229018, 6.093501, 4.081664], [5.581601, 5.929892, 8.855827, 8.114011, 1.647514, 4.406516, 0.895565, 2.778134, 8.201843, 7.055509], [7.062579, 3.590188, 9.408064, 7.474935, 2.362724, 5.872690, 0.793706, 0.902492, 7.354564, 2.615932], [7.130737, 3.333933, 1.123466, 2.393645, 8.780202, 3.740290, 2.323708, 3.949697, 0.925511, 7.826361]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[208.457267, 207.966792, 224.224524, 171.493635, 30.720421, 191.462628, 108.920129, 105.224343, 99.799912, 164.339687], [33.641840, 63.068635, 3.180546, 16.910850, 4.585267, 76.195147, 37.149970, 13.015049, 28.517161, 34.066851], [104.918361, 101.262611, 97.244179, 65.048501, 31.309822, 101.606619, 69.505301, 67.705919, 30.599062, 80.124861], [115.718516, 139.500153, 60.304321, 46.061882, 62.290251, 139.506665, 70.885363, 95.919410, 87.790033, 94.859546], [97.333169, 99.174791, 85.188477, 74.201282, 18.952270, 122.386389, 47.984302, 28.014706, 74.666775, 60.657357], [53.740692, 91.171901, 50.482959, 79.993087, 57.122223, 62.654547, 98.067217, 87.686236, 96.991996, 72.451134], [134.031939, 130.922433, 129.880233, 94.113999, 17.596112, 124.578232, 87.512213, 72.490135, 26.621244, 92.010737], [54.797666, 65.358809, 5.045780, 6.048793, 32.159850, 66.206513, 28.562339, 34.001456, 47.409005, 52.309523], [34.965748, 67.186769, 1.791615, 17.420733, 4.907569, 81.543129, 39.742260, 13.472783, 30.571804, 36.102664], [78.967044, 97.027323, 44.001628, 71.718027, 60.956636, 77.592682, 93.760846, 64.606438, 105.887899, 97.316429]]> : tensor<10x10xf64>
    
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
    %values = arith.constant dense<[2.873872, 1.560983, 9.002264, 0.180058, 3.460588, 4.521819, 2.541911, 4.293634, 4.225172, 8.364622, 6.257887, 2.426388, 9.156606, 2.187623, 8.386768, 6.623746, 2.680334, 0.618222, 9.241330, 1.186060, 9.646423, 7.248516, 3.395854, 9.714236, 8.983945, 7.266632, 2.343145, 2.071289, 1.553486, 5.770743]> : tensor<30xf64>
    %row_indices = arith.constant dense<[2, 9, 0, 1, 4, 6, 2, 3, 5, 1, 4, 5, 8, 9, 0, 2, 3, 5, 6, 2, 3, 7, 9, 5, 9, 0, 5, 9, 3, 4]> : tensor<30xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 2, 6, 9, 14, 19, 23, 25, 28, 30, 30]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
