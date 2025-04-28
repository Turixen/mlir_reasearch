// Sparse-Dense Matrix Multiplication
// Sparse Matrix A: 4x4 (CSC format), equivalent to original A
// Dense Matrix B: 4x3 with all values = 1.0
// Expected Result Matrix C: 4x3
// Result C = A * B =
// [  3  3  3 ]
// [  3  3  3 ]
// [  4  4  4 ]
// [ 11 11 11 ]
// Expected Sum = 63.0
// This modified code performs matrix multiplication and then checks if
// all elements and the total sum match the expected values, returning 0
// on success and 1 on failure.

#CSC = #sparse_tensor.encoding<{
  map = (d0, d1) -> (d1: dense, d0: compressed)
}>

module {
  func.func @sparse_dense_matmul(
    %sparse : tensor<4x4xf64, #CSC>,
    %dense : tensor<4x3xf64>,
    %init : tensor<4x3xf64>
  ) -> tensor<4x3xf64> {
    %result = linalg.matmul
      ins(%sparse, %dense: tensor<4x4xf64, #CSC>, tensor<4x3xf64>)
      outs(%init: tensor<4x3xf64>) -> tensor<4x3xf64>
    return %result : tensor<4x3xf64>
  }

  // Function to compute the sum of all elements in a 4x3 tensor
  func.func @compute_sum(%tensor: tensor<4x3xf64>) -> f64 {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 4 : index
    %cols = arith.constant 3 : index
    %init = arith.constant 0.0 : f64

    %sum = scf.for %i = %c0 to %rows step %c1 iter_args(%sum_iter = %init) -> (f64) {
      %inner_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%inner_sum_iter = %sum_iter) -> (f64) {
        %elem = tensor.extract %tensor[%i, %j] : tensor<4x3xf64>
        %new_sum = arith.addf %inner_sum_iter, %elem : f64
        scf.yield %new_sum : f64
      }
      scf.yield %inner_sum : f64
    }
    return %sum : f64
  }

  func.func @main() -> i32 {
    %output = tensor.empty() : tensor<4x3xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<4x4xf64, #CSC>

    // Dense matrix of 1.0s
    %dense_tensor = arith.constant dense<1.000000> : tensor<4x3xf64>

    // Perform matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output)
      : (tensor<4x4xf64, #CSC>, tensor<4x3xf64>, tensor<4x3xf64>) -> tensor<4x3xf64>

    // --- Checks Start Here ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<
      [ [3.0, 3.0, 3.0],
        [3.0, 3.0, 3.0],
        [4.0, 4.0, 4.0],
        [11.0, 11.0, 11.0] ]> : tensor<4x3xf64>

    // Check all elements of the computed result against the expected result
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant 4 : index
    %cols = arith.constant 3 : index
    // Initialize check result to true (represented as 1 for i1)
    %all_elements_match_init = arith.constant 1 : i1

    %elements_check_result = scf.for %i = %c0 to %rows step %c1 iter_args(%row_match_iter = %all_elements_match_init) -> (i1) {
      %col_check_result = scf.for %j = %c0 to %cols step %c1 iter_args(%col_match_iter = %row_match_iter) -> (i1) {
        %computed_elem = tensor.extract %computed_result[%i, %j] : tensor<4x3xf64>
        %expected_elem = tensor.extract %expected_result[%i, %j] : tensor<4x3xf64>
        // Compare floating point values for ordered equality (oeq)
        %elem_is_equal = arith.cmpf oeq, %computed_elem, %expected_elem : f64
        // Combine current element check result with previous results using logical AND
        %current_match = arith.andi %col_match_iter, %elem_is_equal : i1
        scf.yield %current_match : i1
      }
      scf.yield %col_check_result : i1
    }

    // Calculate the sum of the computed result matrix
    %computed_sum = call @compute_sum(%computed_result) : (tensor<4x3xf64>) -> f64

    // Define the expected sum as a constant
    %expected_sum = arith.constant 63.0 : f64

    // Check if the computed sum matches the expected sum
    %sum_matches = arith.cmpf oeq, %computed_sum, %expected_sum : f64

    // Combine the element-wise check result and the sum check result
    %all_checks_pass = arith.andi %elements_check_result, %sum_matches : i1

    // Return 0 if all checks pass, 1 otherwise
    %return_status = scf.if %all_checks_pass -> (i32) {
      %success = arith.constant 1 : i32
      scf.yield %success : i32
    } else {
      %failure = arith.constant 2 : i32
      scf.yield %failure : i32
    }

    return %return_status : i32
    // --- Checks End Here ---
  }

  func.func @assemble_sparse_tensor() -> tensor<4x4xf64, #CSC> {
    // CSC Format data for matrix A:
    // [ 1 0 2 0 ]
    // [ 0 3 0 0 ]
    // [ 0 0 4 0 ]
    // [ 5 0 0 6 ]
    // values:        [1.0, 5.0, 3.0, 2.0, 4.0, 6.0]
    // row_indices: [0, 3, 1, 0, 2, 3]
    // col_pointers:  [0, 2, 3, 5, 6]

    %values = arith.constant dense<[1.0, 5.0, 3.0, 2.0, 4.0, 6.0]> : tensor<6xf64>
    %row_indices = arith.constant dense<[0, 3, 1, 0, 2, 3]> : tensor<6xindex>
    %col_pointers = arith.constant dense<[0, 2, 3, 5, 6]> : tensor<5xindex>

    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
      : (tensor<5xindex>, tensor<6xindex>), tensor<6xf64> to tensor<4x4xf64, #CSC>

    return %sparse_tensor : tensor<4x4xf64, #CSC>
  }
}
