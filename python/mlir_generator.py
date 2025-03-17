import numpy as np
import scipy.sparse as sp
import argparse

def generate_mlir(sparsity):
    # Define matrix shapes
    m, k, n = 4, 3, 2  # Dimensions for sparse (m x k) and dense (k x n)
    
    # Generate a sparse matrix in CSC format
    rng = np.random.default_rng()
    dense_matrix = rng.random((m, k))
    mask = rng.random((m, k)) < sparsity
    sparse_matrix = sp.csc_matrix(dense_matrix * mask)
    
    # Extract CSC components
    values = sparse_matrix.data.tolist()
    row_indices = sparse_matrix.indices.tolist()
    col_pointers = sparse_matrix.indptr.tolist()
    
    # Generate a dense matrix
    dense_matrix2 = rng.random((k, n))
    
    # MLIR file content
    mlir_content = f"""
#CSC = #sparse_tensor.encoding<{{
   map = (d0, d1) -> (d1: dense, d0: compressed)
}}>

module {{
    // Function to perform matrix multiplication
    func.func @matmul(%t : tensor<{m}x{k}xf64, #CSC>, %s : tensor<{k}x{n}xf64>, %out : tensor<{m}x{n}xf64>)
        -> tensor<{m}x{n}xf64> {{
        %0 = linalg.matmul
            ins(%t, %s: tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>)
            outs(%out: tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        return %0 : tensor<{m}x{n}xf64>
    }}

    // Main function
    func.func @main() -> i64 {{
        // Allocate an empty tensor for the result of the matrix multiplication
        %c = tensor.empty() : tensor<{m}x{n}xf64>
        // Create a sparse tensor using the @test_assemble function
        %t_sparse = call @test_assemble() : () -> tensor<{m}x{k}xf64, #CSC>
        // Define a dense matrix for multiplication
        %s = arith.constant dense<[
            {', '.join(str(row) for row in dense_matrix2.tolist())}
        ]> : tensor<{k}x{n}xf64>
        // Perform matrix multiplication
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        // Define %c1 as a constant index 1
        %c1 = arith.constant 1 : index
        // Extract the element at position [1, 1] from the resulting matrix
        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<{m}x{n}xf64>
        %element = arith.constant 23 : i64
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        // Return the sum as an i64
        return %element_i64 : i64
    }}

    // Function to assemble a sparse tensor
    func.func @test_assemble() -> tensor<{m}x{k}xf64, #CSC> {{
        %values = arith.constant dense<[{', '.join(map(str, values))}]> : tensor<{len(values)}xf64>
        %row_indices = arith.constant dense<[{', '.join(map(str, row_indices))}]> : tensor<{len(row_indices)}xindex>
        %col_pointers = arith.constant dense<[{', '.join(map(str, col_pointers))}]> : tensor<{len(col_pointers)}xindex>
        %sparse_tensor = sparse_tensor.assemble(%col_pointers, %row_indices), %values
            : (tensor<{len(col_pointers)}xindex>, tensor<{len(row_indices)}xindex>), tensor<{len(values)}xf64> to tensor<{m}x{k}xf64, #CSC>
        return %sparse_tensor : tensor<{m}x{k}xf64, #CSC>
    }}
}}
"""
    
    with open("generated.mlir", "w") as f:
        f.write(mlir_content)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate an MLIR file with a sparse matrix.")
    parser.add_argument("--sparsity", type=float, default=0.5, help="Sparsity level of the matrix (0 to 1)")
    args = parser.parse_args()
    generate_mlir(args.sparsity)
