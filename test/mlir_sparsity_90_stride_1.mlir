// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 9 non-zeros (0.90 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 3394.419216

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
    %dense_tensor = arith.constant dense<[[7.968560, 6.065889, 1.967128, 8.822998, 8.063473, 0.196288, 0.565671, 0.918170, 6.978693, 2.738100], [8.184141, 4.664622, 7.072264, 8.946799, 5.816245, 8.952775, 7.404564, 7.653040, 5.273134, 5.116893], [7.796777, 2.161662, 1.419876, 3.188826, 6.387698, 2.096755, 0.379717, 6.969976, 9.931866, 1.530017], [4.139375, 5.286021, 8.910138, 7.006304, 5.297864, 7.517510, 7.139410, 8.609662, 8.143239, 8.465674], [3.238362, 7.803641, 9.775893, 5.725813, 4.901774, 1.408406, 3.974758, 5.006064, 5.358018, 2.703900], [7.742969, 8.354188, 9.625818, 9.848076, 0.568086, 0.826470, 3.475333, 7.524823, 4.758128, 5.785852], [9.220981, 1.271671, 4.031347, 4.928128, 5.309558, 3.304463, 6.692489, 4.457923, 6.684156, 5.741088], [2.843357, 7.967474, 8.880158, 4.958089, 4.922911, 5.017873, 6.281564, 4.909306, 8.630280, 6.159290], [8.178287, 5.528570, 1.597388, 5.887823, 5.446633, 8.540481, 3.973569, 6.344845, 0.590754, 6.507980], [8.889589, 3.429259, 9.841741, 5.595933, 3.352020, 7.686475, 7.467898, 8.156874, 9.372777, 5.948397]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [24.474574, 68.581100, 76.437144, 42.677411, 42.374614, 43.192009, 54.069405, 42.257510, 74.286293, 53.016914], [55.206533, 7.613566, 24.135902, 29.504979, 31.788624, 19.784008, 40.068312, 26.689839, 40.018419, 34.372220], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [71.531101, 90.560267, 78.373607, 93.677160, 83.373254, 10.748689, 30.407552, 39.578462, 79.703323, 35.341334], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [69.313790, 24.480128, 70.633544, 42.766471, 27.947275, 55.319448, 57.187241, 59.644910, 70.079138, 45.956777], [141.369843, 64.744440, 143.044987, 114.692310, 71.797005, 134.943839, 122.345505, 130.689218, 126.326618, 92.162079], [18.505375, 44.593320, 55.863605, 32.719726, 28.010816, 8.048229, 22.713454, 28.606778, 30.617993, 15.451231]]> : tensor<10x10xf64>

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
    %values = arith.constant dense<[6.227894, 6.772439, 6.763836, 5.714425, 5.987057, 0.988195, 8.607634, 6.772155, 9.667854]> : tensor<9xf64>
    %row_indices = arith.constant dense<[5, 8, 5, 9, 2, 7, 1, 7, 8]> : tensor<9xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 1, 2, 2, 2, 4, 4, 6, 7, 7, 9]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
