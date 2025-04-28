// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 50 non-zeros (0.50 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 12153.472540

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
    %dense_tensor = arith.constant dense<[[8.353045, 4.409739, 6.718877, 0.942546, 6.267275, 4.997679, 7.588893, 5.017450, 8.894985, 9.333443], [5.684466, 2.840867, 4.001027, 1.622540, 6.431167, 3.859893, 7.295020, 1.412636, 3.286315, 9.610742], [3.972250, 7.651381, 3.085479, 0.962720, 1.428046, 6.914353, 8.742647, 3.692736, 2.743372, 2.544926], [6.138627, 0.063146, 4.049409, 3.650435, 7.009584, 2.016065, 5.104931, 1.644673, 0.217088, 6.783392], [5.639065, 3.443224, 6.167312, 5.430791, 9.822620, 7.855847, 4.069756, 2.225003, 1.428574, 2.622086], [7.653437, 6.677142, 5.240126, 2.412618, 1.576036, 3.743556, 2.321339, 8.014375, 7.021043, 2.915580], [3.917705, 8.914291, 4.636845, 7.002182, 2.624454, 7.009048, 7.720670, 7.398241, 4.746035, 7.481007], [8.625017, 4.616212, 1.274713, 3.124711, 7.212101, 2.306070, 0.930896, 7.488221, 2.358622, 6.885297], [6.111725, 5.903291, 8.755936, 0.791177, 2.604700, 1.949528, 1.754154, 6.068290, 3.830425, 7.938011], [3.147642, 2.917206, 3.118464, 5.214464, 2.221098, 9.582831, 4.324272, 5.834724, 4.649455, 4.340216]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[164.266009, 127.714536, 106.829740, 107.213217, 128.704667, 124.161964, 100.094040, 166.495379, 88.586874, 185.949056], [108.411551, 90.786458, 125.814089, 59.918002, 85.678423, 102.402432, 58.067648, 105.467133, 69.400001, 118.784960], [133.772800, 114.941761, 109.934952, 61.796162, 107.653700, 143.465578, 176.397758, 90.648094, 77.600102, 159.667725], [143.714523, 165.391511, 125.393251, 70.054950, 92.322282, 149.948090, 191.828843, 135.278134, 146.875705, 167.504417], [70.183195, 68.143196, 58.208617, 64.191319, 50.853419, 130.542184, 103.355548, 78.039669, 57.499855, 75.262500], [137.158148, 140.520331, 129.763156, 38.716296, 64.136002, 98.593253, 117.326275, 119.840349, 85.511293, 118.071100], [218.421159, 198.607320, 220.018811, 107.306539, 158.373589, 179.930146, 217.726427, 194.904674, 194.555338, 301.857128], [96.038442, 84.878106, 95.159411, 22.281008, 71.142970, 66.889833, 99.081441, 61.542047, 56.867244, 129.695835], [184.280261, 148.580989, 121.067232, 113.571024, 139.365394, 127.909292, 101.695741, 167.759121, 107.889912, 137.397530], [180.588368, 134.871376, 152.154266, 65.781549, 123.781778, 138.289942, 144.832203, 143.174641, 139.322939, 211.029291]]> : tensor<10x10xf64>

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
    %values = arith.constant dense<[0.176725, 9.915659, 9.747332, 2.369064, 0.636138, 0.297425, 6.604365, 5.548713, 7.084238, 9.925624, 8.992386, 6.495132, 5.447913, 8.580185, 3.845919, 1.197341, 3.647287, 5.098997, 3.293559, 3.630539, 1.274492, 0.645115, 3.104618, 3.971353, 5.023174, 0.732963, 4.743500, 8.888445, 4.878972, 4.889544, 7.524459, 8.932918, 5.116269, 8.693446, 1.226482, 5.660856, 1.362433, 4.460359, 9.442907, 2.389302, 7.278616, 8.770033, 5.977242, 5.726119, 5.357398, 5.094372, 4.171604, 8.998736, 2.871860, 4.934830]> : tensor<50xf64>
    %row_indices = arith.constant dense<[2, 3, 6, 9, 0, 1, 2, 6, 7, 9, 2, 3, 4, 5, 7, 9, 0, 2, 4, 5, 6, 7, 8, 1, 8, 3, 5, 8, 9, 0, 3, 6, 8, 0, 1, 8, 9, 0, 1, 2, 5, 6, 7, 9, 0, 1, 2, 4, 6, 9]> : tensor<50xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 4, 10, 16, 23, 25, 29, 33, 37, 44, 50]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
