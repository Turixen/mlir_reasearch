// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 50 non-zeros (0.50 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 12628.820004

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
    %dense_tensor = arith.constant dense<[[0.868452, 7.657640, 0.627802, 4.468406, 5.331095, 7.684928, 4.959124, 7.145386, 3.669459, 1.128336], [6.381304, 0.979468, 8.685885, 6.121608, 9.536028, 9.765361, 2.816230, 6.929214, 5.869931, 8.779981], [2.936567, 5.715597, 2.095657, 7.364297, 1.429647, 9.624330, 0.794861, 8.253223, 4.292087, 7.022166], [9.257476, 4.375493, 8.725481, 0.656610, 8.342596, 3.330960, 2.857697, 1.221515, 5.040432, 1.168849], [7.304555, 0.639113, 4.094469, 0.253566, 8.284894, 3.454406, 9.601762, 3.385104, 7.890316, 1.532870], [0.735144, 1.454042, 5.400811, 7.270111, 8.187826, 0.913689, 9.017431, 9.498320, 1.841573, 2.598522], [2.256783, 8.060061, 2.597472, 0.635691, 3.744921, 1.986964, 4.791471, 0.457950, 5.481259, 2.078611], [9.868332, 8.345634, 1.533791, 1.433013, 9.872477, 9.422279, 2.090353, 2.887084, 0.825507, 2.221833], [7.751469, 9.382563, 4.946133, 2.419359, 9.539707, 0.691157, 7.287878, 3.873798, 3.468415, 4.581997], [4.345714, 9.183415, 8.367053, 7.593375, 4.224503, 6.784843, 0.682342, 1.006863, 6.930776, 3.699757]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[135.928284, 166.822801, 110.040472, 102.958353, 146.222460, 108.393337, 110.200323, 105.100849, 116.819911, 109.149931], [75.933783, 111.542292, 55.268262, 18.970651, 98.663118, 25.006557, 95.596809, 32.757780, 74.606406, 44.187940], [203.627237, 307.699908, 184.160600, 189.478953, 252.196677, 259.347493, 196.977353, 205.723278, 238.017869, 155.947975], [79.878793, 140.172015, 100.523145, 79.726424, 145.857022, 54.453420, 142.124169, 102.038400, 97.605428, 70.631597], [185.968616, 186.088213, 247.964515, 203.554473, 273.197692, 255.250037, 143.360848, 204.013491, 197.995793, 160.786194], [150.494271, 109.265701, 117.449290, 73.547145, 209.619760, 126.340838, 166.826931, 126.933155, 139.270302, 95.237855], [110.140902, 154.060151, 159.684362, 136.741121, 230.098260, 132.248424, 182.829717, 172.456189, 139.958397, 132.956648], [143.880893, 85.279278, 147.771919, 93.418874, 146.150428, 156.074929, 49.914674, 110.007434, 111.604064, 111.703692], [51.312930, 62.570792, 36.766567, 21.760806, 69.093682, 5.267385, 55.038329, 33.094530, 24.194417, 32.097566], [77.487956, 97.424684, 102.937723, 88.290052, 176.324578, 65.982359, 193.784692, 135.440050, 116.348921, 53.098432]]> : tensor<10x10xf64>
    
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
    %values = arith.constant dense<[9.558876, 7.103318, 5.109612, 2.917833, 0.206512, 2.667624, 9.708702, 5.451087, 8.241977, 6.220612, 6.343621, 9.453203, 2.039993, 2.645316, 6.573361, 3.327509, 1.870578, 7.449907, 0.218599, 9.149667, 0.693065, 3.430434, 2.099611, 6.241233, 0.316504, 0.879886, 8.338198, 6.096694, 6.691527, 4.723251, 8.061108, 0.816005, 9.553777, 6.916203, 4.338692, 9.509969, 0.329013, 9.854238, 6.636013, 9.510544, 5.803892, 6.433634, 3.596518, 6.236402, 3.463524, 6.542379, 0.286674, 4.261977, 7.250934, 7.011074]> : tensor<50xf64>
    %row_indices = arith.constant dense<[2, 4, 5, 6, 7, 9, 4, 5, 6, 7, 0, 2, 3, 4, 7, 2, 3, 4, 5, 7, 9, 0, 1, 2, 3, 4, 5, 9, 3, 4, 6, 8, 9, 1, 2, 3, 4, 6, 9, 0, 1, 2, 3, 5, 6, 8, 9, 0, 2, 4]> : tensor<50xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 6, 10, 15, 21, 28, 33, 39, 39, 47, 50]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
