// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 30 non-zeros (0.70 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 7696.919556

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
    %dense_tensor = arith.constant dense<[[3.560499, 8.173993, 8.375894, 3.062205, 1.627382, 0.716783, 0.434020, 7.994702, 5.633257, 6.862184], [8.491979, 6.167363, 4.043343, 8.116204, 8.325231, 6.041291, 0.491790, 1.018567, 3.557743, 8.988992], [7.101526, 7.862344, 9.253749, 6.409542, 9.327117, 6.376597, 2.404276, 5.699708, 6.790216, 6.663748], [6.495477, 0.876061, 9.264163, 0.965429, 1.566923, 7.836702, 6.231799, 9.477824, 0.809264, 4.681405], [7.128338, 0.232515, 1.287105, 8.597073, 2.994156, 2.256469, 3.373408, 7.361911, 2.566209, 4.534212], [9.049304, 8.938064, 3.477202, 7.117329, 1.577481, 3.643637, 0.872700, 5.059060, 1.382596, 3.255918], [5.394764, 7.432460, 2.758037, 4.002135, 7.679025, 4.394211, 2.150386, 0.169505, 4.493257, 2.626455], [2.146016, 9.447833, 1.742795, 7.088554, 2.241882, 7.191475, 1.339065, 7.573136, 6.783999, 6.921797], [4.847229, 2.065274, 1.174732, 8.331108, 7.394531, 0.398768, 8.126838, 8.478266, 2.357834, 4.780858], [0.993386, 5.183777, 2.166079, 9.396099, 6.186791, 0.211897, 0.807947, 9.081156, 9.133977, 2.852187]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[52.635797, 41.649463, 49.635130, 24.314592, 45.561632, 52.608286, 34.909200, 37.113300, 26.248246, 31.434244], [256.015514, 196.092426, 105.655412, 345.228888, 225.219149, 124.302307, 117.578675, 256.681143, 160.708462, 221.324072], [19.616459, 19.375321, 7.537639, 15.428456, 3.419554, 7.898426, 1.891779, 10.966682, 2.997096, 7.057956], [141.566913, 104.312884, 112.698737, 184.150520, 148.532290, 85.755987, 58.956794, 162.923444, 131.285331, 120.287084], [113.043006, 88.379573, 41.754526, 99.751259, 29.989993, 45.197583, 21.146001, 75.852898, 25.366682, 49.657087], [91.231067, 88.247461, 91.181777, 84.123014, 108.667518, 75.670997, 21.486670, 50.356479, 69.237759, 89.632305], [30.839436, 46.630215, 28.409497, 64.495888, 50.204972, 18.063516, 5.153771, 48.735433, 53.530141, 43.255952], [93.787906, 110.069662, 74.312606, 106.765299, 103.319577, 94.011993, 19.128702, 60.895210, 78.839804, 112.770861], [41.501069, 5.597350, 59.190830, 6.168343, 10.011424, 50.070458, 39.816371, 60.555959, 5.170573, 29.910553], [114.711756, 111.953904, 106.615586, 110.456375, 149.464241, 85.919124, 73.904874, 96.726388, 89.660371, 94.744623]]> : tensor<10x10xf64>

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
    %values = arith.constant dense<[0.993629, 9.636570, 3.944348, 2.725287, 6.259269, 9.763243, 0.517206, 8.130048, 4.590443, 8.231510, 3.823645, 0.439185, 6.389226, 1.244555, 7.849944, 9.226714, 3.482932, 6.945969, 2.167731, 9.342436, 5.153034, 0.401288, 4.990372, 2.054706, 3.744227, 8.527280, 4.383871, 6.818006, 4.325611, 4.186227]> : tensor<30xf64>
    %row_indices = arith.constant dense<[6, 1, 5, 6, 7, 3, 4, 5, 7, 9, 0, 1, 8, 9, 1, 3, 4, 1, 2, 4, 0, 3, 9, 1, 7, 1, 9, 1, 3, 6]> : tensor<30xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 1, 5, 10, 14, 17, 20, 23, 25, 27, 30]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
