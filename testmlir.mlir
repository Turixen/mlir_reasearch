#CSC = #sparse_tensor.encoding<{
   map = (d0, d1) -> (d1: dense, d0: compressed)
 }>

module {
    // Function to perform matrix multiplication
    func.func @matmul(%t : tensor<4x3xf64, #CSC>, %s : tensor<3x2xf64>, %out : tensor<4x2xf64>)
        -> tensor<4x2xf64> {
        %0 = linalg.matmul
            ins(%t, %s: tensor<4x3xf64, #CSC>, tensor<3x2xf64>)
            outs(%out: tensor<4x2xf64>) -> tensor<4x2xf64>
        return %0 : tensor<4x2xf64>
    }

    // Main function
    func.func @main() -> i64 {
        // Allocate an empty tensor for the result of the matrix multiplication
        %c = tensor.empty() : tensor<4x2xf64>

        // Create a sparse tensor using the @test_assemble function
        %t_sparse = call @test_assemble() : () -> tensor<4x3xf64, #CSC>

        // Define a dense matrix for multiplication
        %s = arith.constant dense<[
            [1.0, 4.0],
            [0.0, 0.0],
            [0.0, 6.0]
        ]> : tensor<3x2xf64>

        // Perform matrix multiplication
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<4x3xf64, #CSC>, tensor<3x2xf64>, tensor<4x2xf64>) -> tensor<4x2xf64>
 
        // Define %c1 as a constant index 1
        %c1 = arith.constant 1 : index

        // Extract the element at position [1, 1] from the resulting matrix
        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<4x2xf64>
	    %element = arith.constant 23 : i64

	    %element_i64 = arith.fptosi %element_f64 : f64 to i64
	
	// Return the sum as an i64
        return %element_i64 : i64
        
    }

    // Function to assemble a sparse tensor
    func.func @test_assemble() -> tensor<4x3xf64, #CSC> {
        %values = arith.constant dense<[3.0, 5.0, 7.0, 4.0]> : tensor<4xf64>
        %row_indices = arith.constant dense<[1, 0, 2, 2]> : tensor<4xindex>
        %col_pointers = arith.constant dense<[0, 1, 3, 4]> : tensor<4xindex>
        %sparse_tensor = sparse_tensor.assemble(%col_pointers, %row_indices), %values
            : (tensor<4xindex>, tensor<4xindex>), tensor<4xf64> to tensor<4x3xf64, #CSC>

        return %sparse_tensor : tensor<4x3xf64, #CSC>
    }
}
