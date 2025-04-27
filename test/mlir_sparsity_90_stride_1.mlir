// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 9 non-zeros (0.90 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 216513.835783

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
    %dense_tensor = arith.constant dense<[[90.800882, 58.495976, 32.353005, 61.726413, 11.209659, 13.808238, 88.719388, 3.233968, 30.212833, 2.524958], [76.630167, 85.785176, 32.387211, 7.824661, 81.960224, 11.504320, 71.042452, 66.241530, 14.385698, 77.505643], [15.655595, 41.216453, 23.263481, 24.310307, 48.893435, 73.916934, 7.389987, 60.754675, 26.184942, 33.488115], [65.128674, 78.424025, 70.099804, 35.908200, 83.244731, 24.434912, 79.524879, 2.894289, 84.440859, 34.971274], [91.272119, 88.202019, 7.207031, 52.830594, 96.957588, 76.715950, 45.676599, 41.232119, 3.221865, 5.945343], [51.925363, 13.883872, 41.406689, 17.531929, 77.942988, 82.777514, 63.639608, 73.477982, 41.542959, 73.647248], [27.251868, 21.376638, 1.971845, 28.983786, 41.568380, 16.903957, 13.233004, 35.922299, 77.591511, 96.645322], [75.693511, 64.204222, 61.164797, 74.668361, 13.191029, 20.891001, 85.498101, 60.743032, 21.356221, 59.045684], [87.499284, 58.045951, 55.243081, 81.062107, 83.146640, 22.122347, 17.924232, 11.729577, 81.275905, 50.091736], [75.482348, 95.208215, 21.873750, 5.552300, 87.332624, 99.243151, 60.322260, 47.920514, 6.980038, 4.918622]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<[[431.100901, 365.665400, 348.354817, 425.262311, 75.127505, 118.981526, 486.941451, 345.952717, 121.631113, 336.285729], [2238.019045, 2822.882498, 648.547257, 164.623310, 2589.374613, 2942.516597, 1788.528976, 1420.822562, 206.955126, 145.835024], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [746.227204, 1964.590861, 1108.858674, 1158.755854, 2330.515798, 3523.266130, 352.245274, 2895.884306, 1248.110723, 1596.218027], [3969.183144, 5006.453208, 1150.214895, 291.963586, 4592.321093, 5218.627296, 3172.001186, 2519.864600, 367.040129, 258.642089], [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], [1984.091556, 530.508998, 1582.168279, 669.902917, 2978.236761, 3162.966179, 2431.698140, 2807.626845, 1587.375204, 2814.094587], [5274.635049, 3398.038872, 1879.390241, 3585.695354, 651.170520, 802.122318, 5153.720784, 187.861622, 1755.067425, 146.675110], [5746.276670, 3812.009426, 3627.938534, 5323.532614, 5460.428643, 1452.824727, 1177.125009, 770.307947, 5337.573239, 3289.638047], [8069.610411, 12036.556008, 3959.185665, 2597.877894, 12000.380189, 15225.590596, 6005.659046, 9520.943003, 2887.127463, 3335.811336]]> : tensor<10x10xf64>
    
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
    %values = arith.constant dense<[58.090130, 47.665209, 86.546097, 38.210451, 5.695348, 65.672270, 29.649569, 52.584257, 88.956954]> : tensor<9xf64>
    %row_indices = arith.constant dense<[7, 3, 9, 6, 0, 8, 1, 4, 9]> : tensor<9xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 1, 1, 3, 3, 3, 4, 4, 5, 6, 9]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<9xindex>), tensor<9xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
