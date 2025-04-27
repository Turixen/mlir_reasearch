// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 50 non-zeros (0.50 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 11118.948041

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
    %dense_tensor = arith.constant dense<[[2.405384, 8.990084, 1.729548, 0.580592, 9.233601, 8.921252, 0.730046, 9.832916, 6.992952, 1.661393], [9.777856, 0.651169, 3.631062, 4.332241, 2.713944, 5.134527, 3.638241, 8.430237, 4.556809, 9.614885], [2.450234, 9.094325, 6.055709, 8.646957, 5.919801, 7.916287, 5.382361, 1.787746, 1.129650, 0.565439], [5.868061, 0.445441, 2.694112, 4.385262, 1.124584, 3.946566, 3.949080, 1.863461, 0.526341, 9.341722], [4.848714, 2.756188, 3.085481, 1.800431, 2.405007, 0.748436, 6.063287, 5.558145, 0.208453, 6.953666], [5.079205, 7.131978, 0.408044, 4.590279, 3.122317, 7.818735, 8.922769, 0.357993, 6.317910, 8.749976], [5.361585, 6.873432, 7.840548, 1.935636, 4.027557, 2.427424, 9.237621, 4.501229, 8.979322, 9.682722], [3.558271, 5.771399, 5.257424, 8.631640, 1.132847, 8.802116, 8.118000, 0.652060, 4.344607, 3.740716], [1.015094, 7.220633, 6.666201, 1.589008, 8.991047, 8.985851, 9.184890, 8.486397, 6.821358, 7.367384], [8.793888, 6.707962, 8.795059, 9.178968, 5.607300, 8.764486, 5.169152, 4.775215, 5.190879, 4.022686]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[80.223925, 180.621667, 114.473841, 151.790777, 113.597065, 203.893232, 195.592293, 67.176301, 108.857900, 125.302426], [253.458679, 131.712281, 200.884251, 172.725689, 138.600127, 203.251856, 198.746829, 195.390863, 169.182765, 289.488115], [73.054856, 91.268878, 49.516996, 63.836710, 49.396582, 85.279190, 114.358045, 27.107726, 80.238398, 119.421353], [115.186057, 78.467530, 93.705258, 66.142792, 62.557548, 73.856811, 128.385777, 88.303619, 75.353774, 181.860993], [40.476260, 59.154651, 58.700766, 31.293226, 74.266400, 85.090637, 80.447251, 79.991427, 55.504568, 94.697154], [169.035855, 185.091519, 152.818365, 130.753838, 141.562125, 189.229029, 246.698348, 136.279165, 163.165721, 254.503632], [184.906011, 224.782693, 186.472615, 214.723619, 143.634789, 268.598273, 265.260742, 123.049898, 193.975101, 222.144124], [12.654976, 12.443003, 4.560464, 8.043385, 7.022688, 10.653130, 19.004804, 7.748864, 8.087277, 19.961510], [64.543325, 57.267160, 45.102576, 29.265648, 39.880924, 31.795798, 90.550695, 62.309563, 37.675194, 99.162038], [85.446564, 80.125302, 92.028398, 56.940871, 95.996867, 110.729754, 113.148117, 126.241977, 89.423715, 132.555879]]> : tensor<10x10xf64>

    // Check all elements of the computed result against the expected result
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 10 : index
    %cols = arith.constant 10 : index
    // Initialize check result to true (1 for i1)
    %all_elements_match_init = arith.constant 1 : i1

    %elements_check_result = scf.for %i = %c0 to %rows step %c1 iter_args(%row_match_iter = %all_elements_match_init) -> (i1) {
    %col_check_result = scf.for %j = %c0 to %cols step %c1 iter_args(%col_match_iter = %row_match_iter) -> (i1) {
        %computed_elem = tensor.extract %computed_result[%i, %j] : tensor<10x10xf64>
        %expected_elem = tensor.extract %expected_result[%i, %j] : tensor<10x10xf64>
        // Compare floating point values for ordered equality (oeq)
        // Note: Floating point comparisons can be tricky due to precision.
        // For generated constants and exact computations, oeq might work.
        // For real-world scenarios, a tolerance comparison is often needed.
        %elem_is_equal = arith.cmpf oeq, %computed_elem, %expected_elem : f64
        // Combine current element check result with previous results using logical AND
        %current_match = arith.andi %col_match_iter, %elem_is_equal : i1
        scf.yield %current_match : i1
    }
    scf.yield %col_check_result : i1
    }

    // Return 0 if all checks pass, 1 otherwise
    %return_status = scf.if %elements_check_result -> (i32) {
        %success = arith.constant 11 : i32
        scf.yield %success : i32
    } else {
        %failure = arith.constant 33 : i32
        scf.yield %failure : i32
    }
    // --- Checks End Here ---
    return %return_status : i32
}

func.func private @assemble_sparse_tensor() -> tensor<10x10xf64, #CSC> {
    // Sparse tensor assembly data - Use the helper for values
    %values = arith.constant dense<[1.637471, 1.039654, 0.449602, 9.900007, 0.595687, 3.771407, 6.368408, 6.632665, 1.724666, 3.297606, 1.624706, 8.379238, 2.381885, 8.832007, 3.836867, 3.403314, 1.022707, 4.956283, 0.656465, 6.142560, 1.314493, 8.499934, 1.065484, 5.964862, 6.774963, 8.086859, 7.180471, 1.236686, 2.056551, 5.774827, 3.812408, 6.170323, 4.926877, 4.013693, 2.201302, 1.328433, 6.618791, 0.023398, 0.648136, 0.242136, 8.443847, 5.088520, 3.629225, 6.357025, 5.407651, 3.910172, 6.804835, 8.273754, 5.167219, 5.452003]> : tensor<50xf64>
    %row_indices = arith.constant dense<[3, 4, 8, 1, 4, 6, 9, 0, 2, 6, 9, 1, 2, 3, 4, 5, 0, 3, 4, 5, 7, 8, 9, 0, 2, 5, 6, 7, 8, 1, 2, 3, 5, 6, 8, 9, 0, 1, 3, 5, 6, 0, 1, 4, 5, 6, 9, 1, 5, 6]> : tensor<50xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 3, 7, 11, 16, 23, 29, 36, 41, 47, 50]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
