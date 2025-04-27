// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 9 non-zeros (0.90 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 2514.775757

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
    %dense_tensor = arith.constant dense<[[9.326734, 7.998857, 0.341682, 9.381894, 2.330696, 9.187962, 7.390007, 3.332050, 8.707549, 6.123477], [5.746357, 6.378185, 7.449163, 0.440496, 0.441040, 0.237361, 0.673466, 1.861125, 7.975714, 6.527478], [8.139873, 7.776686, 1.420089, 6.703352, 8.456569, 3.379247, 0.373700, 0.892401, 3.610276, 3.588164], [2.667194, 2.237621, 8.966660, 5.117291, 0.489269, 9.176449, 0.210220, 7.937904, 7.840546, 2.869599], [7.464165, 3.774525, 5.827397, 6.154474, 2.013846, 3.414130, 0.317547, 8.147608, 6.494608, 9.114182], [2.315465, 7.022091, 1.178198, 8.773286, 8.292640, 5.894703, 5.934908, 3.816407, 7.276159, 5.858873], [3.940048, 1.040210, 8.486845, 1.349821, 9.221467, 1.938218, 3.193379, 1.830730, 9.851835, 8.129325], [8.486140, 0.900970, 2.495568, 9.351371, 4.015723, 7.714193, 5.103922, 6.542247, 1.471677, 4.554014], [0.337927, 3.684030, 4.039433, 6.033539, 9.019909, 2.020497, 3.110818, 3.545052, 1.263870, 3.416629], [9.540454, 7.320648, 6.299807, 8.535706, 7.040248, 8.824776, 7.600473, 0.446809, 9.049199, 1.976486]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[1.062485, 11.583055, 12.700487, 18.970208, 28.359733, 6.352696, 9.780804, 11.146091, 3.973766, 10.742314], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [86.031503, 61.906041, 38.035250, 130.771450, 84.594043, 94.637497, 71.096063, 86.036913, 74.104389, 90.108112], [55.891643, 62.037095, 72.453903, 4.284464, 4.289755, 2.308677, 6.550433, 18.102142, 77.575372, 63.489185], [104.653279, 115.756420, 67.794424, 134.082977, 159.990979, 60.230802, 30.459672, 67.259536, 67.241597, 94.454540], [25.247833, 6.665669, 54.383718, 8.649658, 59.091174, 12.420107, 20.463180, 11.731320, 63.130578, 52.092726]]> : tensor<10x10xf64>
    
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
    %values = arith.constant dense<[9.726449, 9.182678, 2.596371, 3.630228, 6.645199, 6.408002, 6.041030, 3.144126, 8.317857]> : tensor<9xf64>
    %row_indices = arith.constant dense<[7, 8, 6, 8, 6, 9, 6, 0, 8]> : tensor<9xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 0, 1, 2, 2, 4, 5, 6, 7, 9, 9]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
