import numpy as np
import scipy.sparse as sp
import os
import random
from pathlib import Path
from typing import Tuple, List, Optional
import math # Import math for isnan check

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
            # Assign non-zero random values instead of just 1.0
            values.extend([random.random() * 10 for _ in range(num_strided)])

            # If we need more non-zeros, fill random positions
            remaining = nnz - num_strided
            if remaining > 0:
                # Create a mask for positions that aren't already filled
                mask = np.ones((size, size), dtype=bool)
                for i, j in selected_strided:
                    mask[i, j] = False

                # Find candidate positions (more efficient than generating all pairs)
                # Ensure we don't sample more positions than available
                num_candidates = np.sum(mask)
                if num_candidates > 0:
                    selected_idx = np.random.choice(num_candidates,
                                                   min(remaining, num_candidates),
                                                   replace=False)

                    # Get row and column indices of selected remaining positions
                    # This requires mapping flat indices back to 2D indices if using np.where or similar
                    # A simpler way is to just get the indices of `False` in the mask
                    remaining_positions = np.argwhere(mask)
                    selected_remaining = remaining_positions[selected_idx]


                    row_indices.extend(selected_remaining[:, 0])
                    col_indices.extend(selected_remaining[:, 1])
                     # Assign non-zero random values
                    values.extend([random.random() * 10 for _ in range(len(selected_remaining))])


        # Create the sparse matrix in COO format, then convert to CSC
        # Ensure shapes match even if nnz is 0
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
        return np.random.rand(rows, cols) * 10 # Use larger random values


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
            matrix: Dense matrix to file
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

    def __init__(self, output_dir: str = "."):
        """
        Initialize the MLIR generator.

        Args:
            output_dir: Directory to store generated MLIR files
        """
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)

    # NEW HELPER FUNCTION
    def _format_float_literal(self, val: float) -> str:
        """
        Format a float number as a string literal suitable for MLIR,
        ensuring a decimal part for whole numbers and handling special values.
        """
        if math.isnan(val):
            return '0.0 / 0.0'  # MLIR representation for NaN
        elif math.isinf(val):
            return '1.0 / 0.0' if val > 0 else '-1.0 / 0.0'  # MLIR representation for Inf
        else:
            # Always add .0 for integers to ensure MLIR compatibility
            if abs(val - round(val)) < 1e-9:  # Tolerance for floating point comparison
                return f"{int(round(val))}.0"  # Make sure it has a decimal point
            else:
                # Use a fixed format with decimal point for non-integers
                return f"{val:.6f}"  # Always include decimal places


    def generate_mlir(self,
                     sparse_matrix: sp.csc_matrix,
                     dense_matrix: np.ndarray,
                     sparsity: float,
                     stride: int) -> str:
        """
        Generate MLIR code for sparse-dense matrix multiplication with checks.

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

        # Use the new helper function for formatting values
        values = [self._format_float_literal(v) for v in sparse_matrix.data.tolist()]
        row_indices = sparse_matrix.indices.tolist() # These are integers, no change needed
        col_pointers = sparse_matrix.indptr.tolist() # These are integers, no change needed

        # Calculate the expected result matrix and sum using NumPy
        expected_result_np = sparse_matrix.toarray() @ dense_matrix
        expected_sum_np = np.sum(expected_result_np)

        # Format the dense matrix data and expected result data using the modified helper
        dense_data_str = self._format_dense_matrix(dense_matrix)
        expected_dense_data_str = self._format_dense_matrix(expected_result_np)

        # Format the expected sum using the new helper
        expected_sum_str = self._format_float_literal(expected_sum_np)


        mlir_content = f"""// Sparse-Dense Matrix Multiplication
// Sparse Matrix: {m}x{k} with {len(values)} non-zeros ({sparsity:.2f} sparsity, stride={stride})
// Dense Matrix: {k}x{n}
// Expected Result: {m}x{n}
// Expected Sum: {expected_sum_str}

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

// Function to compute the sum of all elements in a tensor
func.func @compute_sum(%tensor: tensor<{m}x{n}xf64>) -> f64 {{
%c0 = arith.constant 0 : index
%c1 = arith.constant 1 : index
%rows = arith.constant {m} : index
%cols = arith.constant {n} : index
%init = arith.constant 0.0 : f64 // Keep init as 0.0 (float)

%sum = scf.for %i = %c0 to %rows step %c1 iter_args(%sum_iter = %init) -> (f64) {{
    %inner_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%inner_sum_iter = %sum_iter) -> (f64) {{
    %elem = tensor.extract %tensor[%i, %j] : tensor<{m}x{n}xf64>
    %new_sum = arith.addf %inner_sum_iter, %elem : f64
    scf.yield %new_sum : f64
    }}
    scf.yield %inner_sum : f64
}}
return %sum : f64
}}

func.func @main() -> i32 {{ // Return status code (0 for success, 1 for failure)
    %output = tensor.empty() : tensor<{m}x{n}xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<{m}x{k}xf64, #CSC>
    %dense_tensor = arith.constant dense<{dense_data_str}> : tensor<{k}x{n}xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<{m}x{k}xf64, #CSC>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>

    // --- Checks Start Here (Dynamic) ---

    // Define the expected result matrix as a constant
    %expected_result = arith.constant dense<{expected_dense_data_str}> : tensor<{m}x{n}xf64>

    // Check all elements of the computed result against the expected result
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %rows = arith.constant {m} : index
    %cols = arith.constant {n} : index
    // Initialize check result to true (1 for i1)
    %all_elements_match_init = arith.constant 1 : i1

    %elements_check_result = scf.for %i = %c0 to %rows step %c1 iter_args(%row_match_iter = %all_elements_match_init) -> (i1) {{
    %col_check_result = scf.for %j = %c0 to %cols step %c1 iter_args(%col_match_iter = %row_match_iter) -> (i1) {{
        %computed_elem = tensor.extract %computed_result[%i, %j] : tensor<{m}x{n}xf64>
        %expected_elem = tensor.extract %expected_result[%i, %j] : tensor<{m}x{n}xf64>
        // Compare floating point values for ordered equality (oeq)
        // Note: Floating point comparisons can be tricky due to precision.
        // For generated constants and exact computations, oeq might work.
        // For real-world scenarios, a tolerance comparison is often needed.
        %elem_is_equal = arith.cmpf oeq, %computed_elem, %expected_elem : f64
        // Combine current element check result with previous results using logical AND
        %current_match = arith.andi %col_match_iter, %elem_is_equal : i1
        scf.yield %current_match : i1
    }}
    scf.yield %col_check_result : i1
    }}

    // Return 0 if all checks pass, 1 otherwise
    %return_status = scf.if %elements_check_result -> (i32) {{
        %success = arith.constant 11 : i32
        scf.yield %success : i32
    }} else {{
        %failure = arith.constant 33 : i32
        scf.yield %failure : i32
    }}
    // --- Checks End Here ---
    return %return_status : i32
}}

func.func private @assemble_sparse_tensor() -> tensor<{m}x{k}xf64, #CSC> {{
    // Sparse tensor assembly data - Use the helper for values
    %values = arith.constant dense<[{', '.join(values)}]> : tensor<{len(values)}xf64>
    %row_indices = arith.constant dense<[{', '.join(map(str, row_indices))}]> : tensor<{len(row_indices)}xindex> // Keep as index
    %col_pointers = arith.constant dense<[{', '.join(map(str, col_pointers))}]> : tensor<{len(col_pointers)}xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<{len(col_pointers)}xindex>, tensor<{len(row_indices)}xindex>), tensor<{len(values)}xf64> to tensor<{m}x{k}xf64, #CSC>

    return %sparse_tensor : tensor<{m}x{k}xf64, #CSC>
}}
}}
"""
        return mlir_content

    # MODIFIED: Use the new helper
    def _format_dense_matrix(self, matrix: np.ndarray) -> str:
        """
        Format a dense matrix to a string suitable for MLIR, ensuring all values are floats.
        """
        rows = []
        for row in matrix.tolist():
            formatted_row = [self._format_float_literal(val) for val in row]
            rows.append(f"[{', '.join(formatted_row)}]")
        return f"[{', '.join(rows)}]"


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
    size = 10
    sparsity_levels = [0.50, 0.70, 0.90]
    strides = [1]

    matrix_generator = MatrixGenerator("../matrices")
    mlir_generator = MlirGenerator(".")

    # Ensure output directories exist
    Path("../matrixmul").mkdir(parents=True, exist_ok=True)


    for sparsity in sparsity_levels:
        for stride in strides:
            # Keep the skip condition for demonstrating subsets
            # This condition means: Process strides 1, 2, 3 for ALL sparsity levels,
            # AND process stride 4 ONLY for sparsity 0.95.
            if stride < 4 or (stride == 4 and sparsity == 0.95):
                print(f"Generating for sparsity: {sparsity:.2f}, stride: {stride}")

                try:
                    # Generate matrices (using size x size for simplicity as before)
                    sparse_matrix = matrix_generator.generate_sparse_matrix(size, sparsity, stride)
                    dense_matrix = matrix_generator.generate_dense_matrix(size, size) # Still generating square dense

                    # Save matrices (optional, but good practice)
                    sparse_filename = f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npz"
                    dense_filename = f"dense_matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npy"
                    matrix_generator.save_sparse_matrix(sparse_matrix, sparse_filename)
                    matrix_generator.save_dense_matrix(dense_matrix, dense_filename)

                    # Generate and save MLIR with dynamic checks
                    mlir_content = mlir_generator.generate_mlir(sparse_matrix, dense_matrix, sparsity, stride)
                    mlir_filename = f"mlir_sparsity_{int(sparsity*100)}_stride_{stride}.mlir"
                    mlir_generator.save_mlir(mlir_content, mlir_filename)


                    # Calcola il risultato atteso con NumPy e salva (still useful for external verification)
                    expected_result = sparse_matrix.toarray() @ dense_matrix
                    expected_sum_np = np.sum(expected_result)

                    result_filename = f"matrixmul_{int(sparsity*100)}_stride_{stride}_sum.txt" # Filename indicates sum
                    result_path = os.path.join("../matrixmul", result_filename)

                    # Save ONLY the sum to text file
                    with open(result_path, 'w') as f:
                         # Write the string representation of the sum
                         # Use the same formatting logic as for MLIR constants for consistency if needed,
                         # but simple str() is fine for a human-readable file.
                        f.write(str(expected_sum_np))

                    print(f"Saved expected sum to {result_path}") # Update print message
                    print(f"Successfully generated files with sparsity: {sparsity:.2f}, stride: {stride}")


                except Exception as e:
                    print(f"Error generating files with sparsity: {sparsity:.2f}, stride: {stride}: {e}")
                    import traceback
                    traceback.print_exc()


if __name__ == "__main__":
    main()
