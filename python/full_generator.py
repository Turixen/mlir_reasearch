import numpy as np
import scipy.sparse as sp
import os
import random
from pathlib import Path
from typing import Tuple, List, Optional


class MatrixGenerator:
    """Class for generating and handling sparse and dense matrices."""
    
    def __init__(self, output_dir: str = "../matrices"):
        """
        Initialize the matrix generator.
        
        Args:
            output_dir: Directory to store generated matrices
        """
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
    
    def generate_sparse_matrix(self, size: int, sparsity: float, stride: int) -> sp.csc_matrix:
        """
        Generate a sparse matrix with controlled sparsity and strided pattern.
        
        Args:
            size: Size of the square matrix
            sparsity: Target sparsity level (0.0-1.0)
            stride: Stride parameter for structured sparsity
            
        Returns:
            A scipy CSC sparse matrix
        """
        if not (0 <= sparsity <= 1):
            raise ValueError("Sparsity must be between 0 and 1")
        if size <= 0 or stride <= 0:
            raise ValueError("Size and stride must be positive")
            
        # Calculate the number of non-zero elements
        nnz = int((1 - sparsity) * size * size)
        
        # More efficient to create COO format first, then convert to CSC
        row_indices = []
        col_indices = []
        values = []
        
        # First, identify strided positions
        strided_positions = [(i, j) for i in range(0, size, stride) 
                             for j in range(0, size, stride)]
        
        # Use strided positions first
        if strided_positions:
            num_strided = min(nnz, len(strided_positions))
            selected_strided = random.sample(strided_positions, num_strided)
            
            # Add these positions
            row_indices.extend([i for i, j in selected_strided])
            col_indices.extend([j for i, j in selected_strided])
            values.extend([1.0] * num_strided)
            
            # If we need more non-zeros, fill random positions
            remaining = nnz - num_strided
            if remaining > 0:
                # Create a mask for positions that aren't already filled
                mask = np.ones((size, size), dtype=bool)
                for i, j in selected_strided:
                    mask[i, j] = False
                
                # Find candidate positions (more efficient than generating all pairs)
                candidate_positions = np.argwhere(mask)
                if len(candidate_positions) > 0:
                    selected_idx = np.random.choice(len(candidate_positions), 
                                                   min(remaining, len(candidate_positions)), 
                                                   replace=False)
                    selected_remaining = candidate_positions[selected_idx]
                    
                    row_indices.extend(selected_remaining[:, 0])
                    col_indices.extend(selected_remaining[:, 1])
                    values.extend([1.0] * len(selected_remaining))
        
        # Create the sparse matrix in COO format, then convert to CSC
        return sp.coo_matrix((values, (row_indices, col_indices)), 
                             shape=(size, size)).tocsc()
    
    def generate_dense_matrix(self, rows: int, cols: int) -> np.ndarray:
        """
        Generate a dense matrix with random values.
        
        Args:
            rows: Number of rows
            cols: Number of columns
            
        Returns:
            A NumPy dense matrix
        """
        return np.random.rand(rows, cols)
    
    def save_sparse_matrix(self, matrix: sp.csc_matrix, filename: str) -> None:
        """
        Save a sparse matrix to file.
        
        Args:
            matrix: Sparse matrix to save
            filename: Target filename
        """
        filepath = self.output_dir / filename
        np.savez(filepath, 
                 matrix_data=matrix.data, 
                 matrix_indices=matrix.indices,
                 matrix_indptr=matrix.indptr, 
                 matrix_shape=matrix.shape)
    
    def save_dense_matrix(self, matrix: np.ndarray, filename: str) -> None:
        """
        Save a dense matrix to file.
        
        Args:
            matrix: Dense matrix to save
            filename: Target filename
        """
        filepath = self.output_dir / filename
        np.save(filepath, matrix)
    
    @staticmethod
    def load_sparse_matrix(filepath: str) -> sp.csc_matrix:
        """
        Load a sparse matrix from file.
        
        Args:
            filepath: Path to the saved matrix
            
        Returns:
            The loaded sparse matrix
        """
        loaded = np.load(filepath)
        data = loaded['matrix_data']
        indices = loaded['matrix_indices']
        indptr = loaded['matrix_indptr']
        shape = loaded['matrix_shape']
        return sp.csc_matrix((data, indices, indptr), shape=shape)


class MlirGenerator:
    """Class for generating MLIR code for sparse matrix multiplication."""
    
    def __init__(self, output_dir: str = "../mlir_files"):
        """
        Initialize the MLIR generator.
        
        Args:
            output_dir: Directory to store generated MLIR files
        """
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)
    
    def generate_mlir(self, 
                     sparse_matrix: sp.csc_matrix, 
                     dense_matrix: np.ndarray, 
                     sparsity: float, 
                     stride: int) -> str:
        """
        Generate MLIR code for sparse-dense matrix multiplication.
        
        Args:
            sparse_matrix: The sparse matrix in CSC format
            dense_matrix: The dense matrix
            sparsity: Sparsity level of the sparse matrix
            stride: Stride used to generate the sparse matrix
            
        Returns:
            MLIR code as a string
        """
        m, k = sparse_matrix.shape
        k2, n = dense_matrix.shape
        
        if k != k2:
            raise ValueError(f"Matrix dimensions don't match for multiplication: {k} vs {k2}")
        
        values = sparse_matrix.data.tolist()
        row_indices = sparse_matrix.indices.tolist()
        col_pointers = sparse_matrix.indptr.tolist()
        
        # Format the dense matrix data cleanly
        dense_data_str = self._format_dense_matrix(dense_matrix)
        
        mlir_content = f"""// Sparse-Dense Matrix Multiplication
// Sparse Matrix: {m}x{k} with {len(values)} non-zeros ({sparsity:.2f} sparsity, stride={stride})
// Dense Matrix: {k}x{n}

#CSC = #sparse_tensor.encoding<{{
  map = (d0, d1) -> (d1: dense, d0: compressed)
}}>

module {{
  func.func @sparse_dense_matmul(
    %sparse : tensor<{m}x{k}xf64, #CSC>,
    %dense : tensor<{k}x{n}xf64>,
    %init : tensor<{m}x{n}xf64>
  ) -> tensor<{m}x{n}xf64> {{
    %result = linalg.matmul
      ins(%sparse, %dense: tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>)
      outs(%init: tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
    return %result : tensor<{m}x{n}xf64>
  }}

  func.func @main() -> i64 {{
    %output = tensor.empty() : tensor<{m}x{n}xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<{m}x{k}xf64, #CSC>
    %dense_tensor = arith.constant dense<{dense_data_str}> : tensor<{k}x{n}xf64>
    
    // Perform the matrix multiplication
    %result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
      (tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
    
    // Extract a sample element from the result
    %c1 = arith.constant 1 : index
    %element_f64 = tensor.extract %result[%c1, %c1] : tensor<{m}x{n}xf64>
    %element_i64 = arith.fptosi %element_f64 : f64 to i64
        
    return %element_i64 : i64
  }}

  func.func private @assemble_sparse_tensor() -> tensor<{m}x{k}xf64, #CSC> {{
    // Sparse tensor assembly data
    %values = arith.constant dense<[{', '.join(map(str, values))}]> : tensor<{len(values)}xf64>
    %row_indices = arith.constant dense<[{', '.join(map(str, row_indices))}]> : tensor<{len(row_indices)}xindex>
    %col_pointers = arith.constant dense<[{', '.join(map(str, col_pointers))}]> : tensor<{len(col_pointers)}xindex>
    
    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
      : (tensor<{len(col_pointers)}xindex>, tensor<{len(row_indices)}xindex>), tensor<{len(values)}xf64> to tensor<{m}x{k}xf64, #CSC>
      
    return %sparse_tensor : tensor<{m}x{k}xf64, #CSC>
  }}
}}
"""
        return mlir_content
    
    def _format_dense_matrix(self, matrix: np.ndarray) -> str:
        """Format a dense matrix for MLIR representation."""
        rows = []
        for row in matrix:
            rows.append('[' + ', '.join(f"{x:.6f}" for x in row) + ']')
        return '[' + ', '.join(rows) + ']'
    
    def save_mlir(self, mlir_content: str, filename: str) -> None:
        """
        Save MLIR code to file.
        
        Args:
            mlir_content: MLIR code as string
            filename: Target filename
        """
        filepath = self.output_dir / filename
        with open(filepath, 'w') as f:
            f.write(mlir_content)


def main():
    """Main function to generate matrices and MLIR code."""
    size = 100
    sparsity_levels = [0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95]
    strides = [1, 2, 3, 4]
    
    matrix_generator = MatrixGenerator("../matrices")
    mlir_generator = MlirGenerator("../mlir_files")
    
    for sparsity in sparsity_levels:
        for stride in strides:
            # Skip certain combinations as per original code
            if (sparsity == 0.95 and stride == 4) or stride < 4:
                print(f"Generating for sparsity: {sparsity:.2f}, stride: {stride}")
                
                try:
                    # Generate matrices
                    sparse_matrix = matrix_generator.generate_sparse_matrix(size, sparsity, stride)
                    dense_matrix = matrix_generator.generate_dense_matrix(size, size)
                    
                    # Save matrices
                    sparse_filename = f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npz"
                    dense_filename = f"dense_matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npy"
                    matrix_generator.save_sparse_matrix(sparse_matrix, sparse_filename)
                    matrix_generator.save_dense_matrix(dense_matrix, dense_filename)
                    
                    # Generate and save MLIR
                    mlir_content = mlir_generator.generate_mlir(sparse_matrix, dense_matrix, sparsity, stride)
                    mlir_filename = f"mlir_sparsity_{int(sparsity*100)}_stride_{stride}.mlir"
                    mlir_generator.save_mlir(mlir_content, mlir_filename)
                 

                    # Calcola il risultato atteso con NumPy
                    expected_result = sparse_matrix.toarray() @ dense_matrix
                    result_filename = f"matrixmul_{int(sparsity*100)}_stride_{stride}.txt"
                    result_path = os.path.join("../matrixmul", result_filename)

                    # Save result to text file
                    np.savetxt(result_path, expected_result, fmt="%.6f")
                    print(f"Saved expected result to {result_path}")
                    print(f"Successfully generated files with sparsity: {sparsity:.2f}, stride: {stride}")
                    
                except Exception as e:
                    print(f"Error generating matrices with sparsity: {sparsity:.2f}, stride: {stride}: {e}")


if __name__ == "__main__":
    main()