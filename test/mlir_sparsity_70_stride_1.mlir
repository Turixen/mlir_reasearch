// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 30 non-zeros (0.70 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 8123.806311

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
    %dense_tensor = arith.constant dense<[[4.438382, 7.438847, 4.928081, 4.092251, 6.651813, 8.559510, 8.749293, 6.940832, 5.860013, 9.428573], [0.318351, 7.877182, 1.883091, 3.561557, 8.416060, 3.123917, 6.256787, 0.584181, 5.642954, 9.677949], [0.570646, 7.361536, 9.938853, 2.227675, 6.329342, 0.314857, 5.399319, 5.752643, 5.704150, 9.268655], [3.979961, 4.010157, 7.245239, 6.115450, 7.549733, 4.845677, 3.358776, 0.523198, 5.169069, 7.800957], [0.478959, 1.617214, 9.778029, 6.822124, 9.480290, 5.224891, 2.574445, 7.890218, 9.752294, 6.319815], [7.439261, 9.269285, 6.121202, 2.300804, 1.388197, 3.721263, 7.251154, 4.071237, 5.129212, 3.117109], [8.658745, 5.687334, 8.508622, 0.416494, 7.422110, 2.947457, 1.430556, 1.289642, 0.220272, 1.315247], [0.711202, 9.186219, 2.085272, 4.221865, 9.544920, 0.250533, 2.726828, 9.957169, 7.705096, 5.348494], [4.884491, 2.349175, 2.950394, 0.406386, 5.665824, 1.134798, 1.073038, 8.679908, 6.988995, 9.142146], [8.518052, 4.593046, 3.468074, 3.155478, 5.472143, 2.237062, 7.908472, 1.606061, 1.998961, 6.547569]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[50.260572, 77.281540, 58.050380, 23.047825, 89.765940, 31.054542, 39.620297, 19.941783, 35.105267, 57.446616], [54.711417, 133.565682, 181.377203, 157.539737, 239.231029, 112.025449, 92.493548, 165.210455, 205.399052, 187.544871], [4.858601, 25.544252, 96.311966, 59.282048, 87.818421, 43.063052, 30.036976, 73.904553, 88.981365, 67.033125], [5.438746, 2.615741, 3.285183, 0.452500, 6.308739, 1.263567, 1.194798, 9.664838, 7.782053, 10.179528], [71.027187, 61.713250, 74.203665, 30.466969, 74.868946, 38.071263, 45.630620, 105.803231, 101.747600, 101.376221], [1.889006, 46.740931, 11.173722, 21.133253, 49.938479, 18.536425, 37.125975, 3.466362, 33.483664, 57.426163], [36.686145, 46.399703, 125.582082, 71.905007, 124.623282, 58.230163, 40.987973, 97.337082, 116.430323, 109.189742], [163.107894, 203.844422, 153.823878, 109.591022, 230.221192, 103.932072, 190.789944, 161.110861, 211.100192, 275.980971], [82.204801, 166.118026, 233.805606, 105.589099, 155.221466, 88.804149, 139.493823, 161.741440, 189.452972, 165.969570], [56.654217, 31.913435, 44.265172, 3.782513, 57.684658, 16.029288, 11.001050, 57.486958, 43.781538, 60.416395]]> : tensor<10x10xf64>

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
    %values = arith.constant dense<[2.137786, 4.621771, 5.933712, 9.590519, 1.681607, 1.643269, 8.116635, 8.945619, 2.312270, 9.293735, 8.140570, 2.575994, 7.698275, 4.338807, 9.516970, 4.213457, 6.267687, 9.814797, 5.551506, 1.041854, 3.063686, 1.012575, 7.267378, 0.642315, 1.113472, 7.871522, 2.832919, 8.822413, 6.167796, 7.959548]> : tensor<30xf64>
    %row_indices = arith.constant dense<[1, 0, 5, 7, 2, 6, 8, 1, 6, 1, 2, 4, 6, 7, 8, 4, 7, 8, 0, 6, 9, 0, 1, 7, 3, 4, 6, 7, 9, 7]> : tensor<30xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 1, 4, 7, 9, 15, 18, 21, 24, 29, 30]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
