// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 9 non-zeros (0.90 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 1316.892775

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
    %dense_tensor = arith.constant dense<[[9.494458, 2.859603, 2.243965, 2.998737, 1.059543, 6.352856, 2.947006, 2.642367, 5.719248, 1.902856], [1.559970, 9.142902, 2.973898, 0.710368, 4.842943, 0.350860, 3.595465, 1.873356, 6.121810, 7.915027], [3.636887, 0.918367, 8.306695, 9.098261, 3.265114, 9.039229, 6.572532, 9.049995, 1.466757, 2.496438], [0.706178, 3.871320, 3.682365, 7.844116, 3.584051, 7.683453, 9.478922, 9.100786, 6.850197, 5.790241], [4.462727, 7.279893, 5.806509, 5.480213, 2.825876, 3.836449, 4.799118, 0.279801, 6.980132, 0.461718], [2.472073, 1.086903, 9.882458, 2.254184, 2.017861, 1.312996, 7.727493, 3.969614, 3.546879, 5.754480], [3.365680, 8.546658, 7.773836, 3.007747, 6.006956, 1.316381, 5.241567, 8.891184, 3.071197, 4.333855], [3.475891, 0.353794, 5.368227, 6.177848, 0.494538, 0.947069, 7.243435, 3.411183, 7.570809, 4.478120], [0.273213, 0.466982, 9.263816, 3.485873, 2.462586, 9.355779, 0.756688, 0.704369, 3.477599, 9.073046], [1.428751, 1.618449, 4.491428, 9.783437, 0.523862, 5.264148, 2.423897, 8.771436, 2.208558, 4.756949]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[12.650048, 15.995283, 26.959961, 14.303116, 8.723044, 9.595425, 21.588796, 6.802214, 19.282301, 9.970798], [6.076879, 2.791265, 15.106928, 21.407019, 4.697390, 16.815516, 10.824043, 20.334045, 4.081976, 7.944810], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [60.248543, 18.146051, 14.239427, 19.028951, 6.723493, 40.313028, 18.700679, 16.767544, 36.292368, 12.074863], [9.122519, 4.493684, 35.873692, 12.452815, 7.133209, 7.041617, 27.520616, 17.806452, 13.166128, 21.933034], [43.985964, 58.422475, 100.996742, 76.767842, 57.841673, 65.992166, 74.321803, 112.626687, 28.275123, 42.632729], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]> : tensor<10x10xf64>

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
    %values = arith.constant dense<[6.345654, 1.278334, 6.405392, 1.961994, 1.575279, 3.408473, 6.147429, 0.999281, 0.487506]> : tensor<9xf64>
    %row_indices = arith.constant dense<[3, 1, 5, 0, 0, 4, 5, 1, 4]> : tensor<9xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 1, 1, 3, 3, 4, 6, 7, 7, 7, 9]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
