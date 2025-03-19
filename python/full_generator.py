import numpy as np
import scipy.sparse as sp
import os
import re

def generate_sparse_matrix(size, sparsity, stride):
    density = 1.0 - sparsity
    num_nonzero = int(size * size * density)
    
    rows = np.arange(0, size, stride)
    cols = np.arange(0, size, stride)
    rows, cols = np.meshgrid(rows, cols)
    rows = rows.flatten()
    cols = cols.flatten()
    
    if len(rows) > num_nonzero:
        indices = np.random.choice(len(rows), num_nonzero, replace=False)
        rows = rows[indices]
        cols = cols[indices]
    
    data = np.random.rand(len(rows))
    matrix_csc = sp.csc_matrix((data, (rows, cols)), shape=(size, size))
    return matrix_csc

def generate_dense_matrix(rows, cols):
    return np.random.rand(rows, cols)

def save_matrix(matrix, filename):
    np.savez(filename, matrix_data=matrix.data, matrix_indices=matrix.indices,
             matrix_indptr=matrix.indptr, matrix_shape=matrix.shape)

def save_dense_matrix(matrix, filename):
    np.save(filename, matrix)

def generate_mlir(dense_matrix, sparse_matrix, sparsity, stride):
    m, k = sparse_matrix.shape
    k, n = dense_matrix.shape
    values = sparse_matrix.data.tolist()
    row_indices = sparse_matrix.indices.tolist()
    col_pointers = sparse_matrix.indptr.tolist()

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
            {', '.join(str(row) for row in dense_matrix.tolist())}
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
    return mlir_content

def main():
    size = 100
    sparsity_levels = np.arange(0.5, 0.91, 0.05)
    strides = [1, 3, 5]
    matrix_output_folder = "../matrices"
    mlir_output_folder = "../mlir_files"

    os.makedirs(matrix_output_folder, exist_ok=True)
    os.makedirs(mlir_output_folder, exist_ok=True)

    for sparsity in sparsity_levels:
        for stride in strides:
            matrix_csc = generate_sparse_matrix(size, sparsity, stride)
            dense_matrix = generate_dense_matrix(size, size)
            
            sparse_filename = os.path.join(matrix_output_folder, f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npz")
            save_matrix(matrix_csc, sparse_filename)
            
            dense_filename = os.path.join(matrix_output_folder, f"dense_matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npy")
            save_dense_matrix(dense_matrix, dense_filename)
            
            mlir_content = generate_mlir(dense_matrix, matrix_csc, int(sparsity*100), stride)
            mlir_filename = os.path.join(mlir_output_folder, f"mlir_sparsity_{int(sparsity*100)}_stride_{stride}.mlir")

            with open(mlir_filename, 'w') as f:
                f.write(mlir_content)
            print(f"Generated: {mlir_filename}, {dense_filename},{sparse_filename}")

if __name__ == "__main__":
    main()
