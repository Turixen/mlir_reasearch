import numpy as np
import scipy.sparse as sp
import os
import random

def generate_sparse_matrix(size, sparsity, stride):
    # Calculate the number of non-zero elements
    num_nonzero = int((1 - sparsity) * size * size)
    
    # Create a 2D array to hold our matrix
    matrix = np.zeros((size, size))
    
    # First, fill the strided positions
    strided_positions = [(i, j) for i in range(0, size, stride) for j in range(0, size, stride)]
    
    # Randomly select from strided positions (up to how many we have)
    if len(strided_positions) > 0:
        num_strided = int(min(num_nonzero, len(strided_positions)))
        selected_strided = random.sample(strided_positions, num_strided)
        
        # Fill these positions
        for i, j in selected_strided:
            matrix[i, j] = 1.0
            
        # If we need more non-zeros, fill random positions
        remaining = int(num_nonzero - num_strided)
        if remaining > 0:
            remaining_positions = [(i, j) for i in range(size) for j in range(size) 
                                 if (i % stride != 0 or j % stride != 0)]
            if remaining_positions:
                selected_remaining = random.sample(remaining_positions, remaining)
                for i, j in selected_remaining:
                    matrix[i, j] = 1.0
    
    # Convert to sparse format
    matrix_csc = sp.csc_matrix(matrix)
    return matrix_csc

def generate_dense_matrix(rows, cols):
    return np.random.rand(rows, cols)

def save_matrix(matrix, filename):
    np.savez(filename, matrix_data=matrix.data, matrix_indices=matrix.indices,
             matrix_indptr=matrix.indptr, matrix_shape=matrix.shape)

def save_dense_matrix(matrix, filename):
    np.save(filename, matrix)

def load_matrix(filename):
    loaded = np.load(filename)
    data = loaded['matrix_data']
    indices = loaded['matrix_indices']
    indptr = loaded['matrix_indptr']
    shape = loaded['matrix_shape']
    return sp.csc_matrix((data, indices, indptr), shape=shape)

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
    func.func @matmul(%t : tensor<{m}x{k}xf64, #CSC>, %s : tensor<{k}x{n}xf64>, %out : tensor<{m}x{n}xf64>)
        -> tensor<{m}x{n}xf64> {{
        %0 = linalg.matmul
            ins(%t, %s: tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>)
            outs(%out: tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        return %0 : tensor<{m}x{n}xf64>
    }}

    func.func @main() -> i64 {{
        %c = tensor.empty() : tensor<{m}x{n}xf64>
        %t_sparse = call @test_assemble() : () -> tensor<{m}x{k}xf64, #CSC>
        %s = arith.constant dense<[
            {', '.join(str(row) for row in dense_matrix.tolist())}
        ]> : tensor<{k}x{n}xf64>
        %result_matrix = call @matmul(%t_sparse, %s, %c) :
            (tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        %c1 = arith.constant 1 : index
        %element_f64 = tensor.extract %result_matrix[%c1, %c1] : tensor<{m}x{n}xf64>
        %element_i64 = arith.fptosi %element_f64 : f64 to i64
        return %element_i64 : i64
    }}

    func.func @test_assemble() -> tensor<{m}x{k}xf64, #CSC> {{
        %values = arith.constant dense<[{', '.join(map(str, values))}]> : tensor<{len(values)}xf64>
        %row_indices = arith.constant dense<[{', '.join(map(str, row_indices))}]> : tensor<{len(row_indices)}xindex>
        %col_pointers = arith.constant dense<[{', '.join(map(str, col_pointers))}]> : tensor<{len(col_pointers)}xindex>
        %sparse_tensor = sparse_tensor.assemble %col_pointers, %row_indices, %values
            : (tensor<{len(col_pointers)}xindex>, tensor<{len(row_indices)}xindex>, tensor<{len(values)}xf64>) -> tensor<{m}x{k}xf64, #CSC>
        return %sparse_tensor : tensor<{m}x{k}xf64, #CSC>
    }}
}}
"""
    return mlir_content

def main():
    size = 100
    sparsity_levels = [0.50,0.55,0.60,0.65,0.70,0.75,0.80,0.85,0.90,0.95]
    strides = [1, 2,3,4]
    matrix_output_folder = "../matrices"
    mlir_output_folder = "../mlir_files"

    os.makedirs(matrix_output_folder, exist_ok=True)
    os.makedirs(mlir_output_folder, exist_ok=True)

    for sparsity in sparsity_levels:
        for stride in strides:
            print(f"Generating for sparsity: {sparsity}, stride: {stride}")
            if (sparsity == 0.95 and stride == 4) or stride < 4:
                matrix_csc = generate_sparse_matrix(size, sparsity, stride)
                dense_matrix = generate_dense_matrix(size, size)
                
                sparse_filename = os.path.join(matrix_output_folder, f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npz")
                save_matrix(matrix_csc, sparse_filename)
                
                dense_filename = os.path.join(matrix_output_folder, f"dense_matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npy")
                save_dense_matrix(dense_matrix, dense_filename)
                
                mlir_content = generate_mlir(dense_matrix, matrix_csc, sparsity, stride)
                mlir_filename = os.path.join(mlir_output_folder, f"mlir_sparsity_{int(sparsity*100)}_stride_{stride}.mlir")

                with open(mlir_filename, 'w') as f:
                    f.write(mlir_content)
                print(f"Generated: {mlir_filename}, {dense_filename}, {sparse_filename}")

if __name__ == "__main__":
    main()