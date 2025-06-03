import numpy as np
import scipy.sparse as sp
import os
import random
from pathlib import Path
from typing import Tuple, List, Optional
import math

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

    def generate_sparse_matrix(self, size: int, sparsity: float, stride: int) -> sp.csr_matrix:
        """
        Generate a sparse matrix with controlled sparsity and strided pattern.
        Args:
            size: Size of the square matrix
            sparsity: Target sparsity level (0.0-1.0)
            stride: Stride parameter for structured sparsity
        Returns:
            A scipy CSR sparse matrix
        """
        if not (0 <= sparsity <= 1):
            raise ValueError("Sparsity must be between 0 and 1")
        if size <= 0 or stride <= 0:
            raise ValueError("Size and stride must be positive")

        nnz = int((1 - sparsity) * size * size)
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

            row_indices.extend([i for i, j in selected_strided])
            col_indices.extend([j for i, j in selected_strided])
            values.extend([random.random() * 10 for _ in range(num_strided)])

            remaining = nnz - num_strided
            if remaining > 0:
                mask = np.ones((size, size), dtype=bool)
                for i, j in selected_strided:
                    mask[i, j] = False

                num_candidates = np.sum(mask)
                if num_candidates > 0:
                    selected_idx = np.random.choice(num_candidates,
                                                   min(remaining, num_candidates),
                                                   replace=False)
                    remaining_positions = np.argwhere(mask)
                    selected_remaining = remaining_positions[selected_idx]

                    row_indices.extend(selected_remaining[:, 0])
                    col_indices.extend(selected_remaining[:, 1])
                    values.extend([random.random() * 10 for _ in range(len(selected_remaining))])

        return sp.coo_matrix((values, (row_indices, col_indices)),
                             shape=(size, size)).tocsr()

    def generate_dense_matrix(self, rows: int, cols: int) -> np.ndarray:
        """
        Generate a dense matrix with random values.
        Args:
            rows: Number of rows
            cols: Number of columns
        Returns:
            A NumPy dense matrix
        """
        return np.random.rand(rows, cols) * 10

    def save_sparse_matrix(self, matrix: sp.csr_matrix, filename: str) -> None:
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
    def load_sparse_matrix(filepath: str) -> sp.csr_matrix:
        """
        Load a sparse matrix from file.
        Args:
            filepath: Path to the saved matrix
        Returns:
            The loaded sparse matrix
        """
        loaded = np.load(filepath)
        return sp.csr_matrix((loaded['matrix_data'], loaded['matrix_indices'],
                            loaded['matrix_indptr']), shape=loaded['matrix_shape'])

class MlirGenerator:
    """Class for generating MLIR code for various matrix operations."""

    def __init__(self):
        """
        Initialize the MLIR generator.
        """
        self.output_dirs = {
            'matmul': Path("../mlir_files"),
            'elementwise': Path("../mlir_files_elementwise"),
            'sparse': Path("../mlir_files_sparse")
        }
        for dir in self.output_dirs.values():
            dir.mkdir(parents=True, exist_ok=True)

    def _format_float_literal(self, val: float) -> str:
        """
        Format a float number as a string literal suitable for MLIR.
        """
        if math.isnan(val):
            return '0.0 / 0.0'
        elif math.isinf(val):
            return '1.0 / 0.0' if val > 0 else '-1.0 / 0.0'
        else:
            if abs(val - round(val)) < 1e-9:
                return f"{int(round(val))}.0"
            else:
                return f"{val:.6f}"

    def _format_dense_matrix(self, matrix: np.ndarray) -> str:
        """
        Format a dense matrix to a string suitable for MLIR.
        """
        rows = []
        for row in matrix.tolist():
            formatted_row = [self._format_float_literal(val) for val in row]
            rows.append(f"[{', '.join(formatted_row)}]")
        return f"[{', '.join(rows)}]"
    
    def _get_csr_components(self, sparse_matrix: sp.csr_matrix):
        """
        Extract CSR components with correct naming and explicit row indices.
        """
        values = [self._format_float_literal(v) for v in sparse_matrix.data.tolist()]
        col_indices = sparse_matrix.indices.tolist()  # CORRECT: these are column indices
        row_pointers = sparse_matrix.indptr.tolist()  # CORRECT: these are row pointers
        
        # Generate explicit row indices for each non-zero element
        row_indices = []
        for row_idx in range(len(row_pointers) - 1):
            start = row_pointers[row_idx]
            end = row_pointers[row_idx + 1]
            row_indices.extend([row_idx] * (end - start))
        
        return values, col_indices, row_pointers, row_indices
    
    def generate_matmul_mlir(self, sparse_matrix: sp.csr_matrix, 
                       dense_matrix: np.ndarray, sparsity: float, stride: int) -> str:
        """Generate MLIR for sparse-dense matrix multiplication."""
        m, k = sparse_matrix.shape
        k2, n = dense_matrix.shape

        if k != k2:
            raise ValueError(f"Matrix dimensions don't match: {k} vs {k2}")

        values, col_indices, row_pointers, row_indices = self._get_csr_components(sparse_matrix)

        expected_result = sparse_matrix.toarray() @ dense_matrix
        expected_sum = np.sum(expected_result)
        dense_data_str = self._format_dense_matrix(dense_matrix)
        expected_sum_str = self._format_float_literal(expected_sum)

        return f"""// Sparse-Dense Matrix Multiplication
#CSR = #sparse_tensor.encoding<{{
    map = (d0, d1) -> (d0: dense, d1: compressed)
}}>

module {{
    func.func @compute_sum(%tensor: tensor<{m}x{n}xf64>) -> f64 {{
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %rows = arith.constant {m} : index
        %cols = arith.constant {n} : index
        %init = arith.constant 0.0 : f64

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

    func.func @sparse_dense_matmul(
        %sparse : tensor<{m}x{k}xf64, #CSR>,
        %dense : tensor<{k}x{n}xf64>,
        %init : tensor<{m}x{n}xf64>
    ) -> tensor<{m}x{n}xf64> {{
        %result = linalg.matmul
            ins(%sparse, %dense: tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>)
            outs(%init: tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        return %result : tensor<{m}x{n}xf64>
    }}

    func.func @main() -> i32 {{
        %1 = arith.constant 0 : i32  
        %2 = arith.constant 1 : i32
        %output = tensor.empty() : tensor<{m}x{n}xf64>
        %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<{m}x{k}xf64, #CSR>
        %dense_tensor = arith.constant dense<{dense_data_str}> : tensor<{k}x{n}xf64>

        %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) : 
            (tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>

        %expected_sum = arith.constant {expected_sum_str} : f64
        %sum = call @compute_sum(%computed_result) : (tensor<{m}x{n}xf64>) -> f64

        %is_equal = arith.cmpf oeq, %sum, %expected_sum : f64

        %result = arith.select %is_equal, %1, %2 : i32            
        return %result : i32
    }}

    func.func private @assemble_sparse_tensor() -> tensor<{m}x{k}xf64, #CSR> {{
        %values = arith.constant dense<[{', '.join(values)}]> : tensor<{len(values)}xf64>
        %col_indices = arith.constant dense<[{', '.join(map(str, col_indices))}]> : tensor<{len(col_indices)}xindex>
        %row_pointers = arith.constant dense<[{', '.join(map(str, row_pointers))}]> : tensor<{len(row_pointers)}xindex>

        %sparse_tensor = sparse_tensor.assemble (%row_pointers, %col_indices), %values
            : (tensor<{len(row_pointers)}xindex>, tensor<{len(col_indices)}xindex>), tensor<{len(values)}xf64> 
            to tensor<{m}x{k}xf64, #CSR>
        return %sparse_tensor : tensor<{m}x{k}xf64, #CSR>
    }}
}}"""

    def generate_elementwise_mlir(self, sparse_matrix: sp.csr_matrix, 
                            dense_matrix: np.ndarray, sparsity: float, stride: int) -> str:
        """Generate MLIR for elementwise multiplication."""
        m, k = sparse_matrix.shape
        k2, n = dense_matrix.shape

        if k != k2:
            raise ValueError(f"Matrix dimensions don't match: {k} vs {k2}")

        values, col_indices, row_pointers, row_indices = self._get_csr_components(sparse_matrix)

        expected_result = sparse_matrix.toarray() * dense_matrix
        expected_sum = np.sum(expected_result)
        dense_data_str = self._format_dense_matrix(dense_matrix)
        expected_sum_str = self._format_float_literal(expected_sum)

        return f"""// Elementwise Multiplication
#CSR = #sparse_tensor.encoding<{{
    map = (d0, d1) -> (d0: dense, d1: compressed)
}}>

#trait_mul_ds = {{
    indexing_maps = [
        affine_map<(i,j) -> (i,j)>,  // A
        affine_map<(i,j) -> (i,j)>,  // B
        affine_map<(i,j) -> (i,j)>   // C (out)
    ],
    iterator_types = ["parallel", "parallel"],
    doc = "C(i,j) = A(i,j) * B(i,j)"
}}

module {{
    func.func @compute_sum(%tensor: tensor<{m}x{n}xf64>) -> f64 {{
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %rows = arith.constant {m} : index
        %cols = arith.constant {n} : index
        %init = arith.constant 0.0 : f64

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

    func.func @mul_ds(
        %sparse : tensor<{m}x{k}xf64, #CSR>,
        %dense : tensor<{k}x{n}xf64>,
        %init : tensor<{m}x{n}xf64>
    ) -> tensor<{m}x{n}xf64> {{
        %0 = linalg.generic #trait_mul_ds
            ins(%sparse, %dense: tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>)
            outs(%init: tensor<{m}x{n}xf64>) {{
            ^bb0(%a: f64, %b: f64, %x: f64):
                %0 = arith.mulf %a, %b : f64
                linalg.yield %0 : f64
        }} -> tensor<{m}x{n}xf64>
        return %0 : tensor<{m}x{n}xf64>
    }}

    func.func @main() -> i32 {{
        %1 = arith.constant 0 : i32  
        %2 = arith.constant 1 : i32
        %output = tensor.empty() : tensor<{m}x{n}xf64>
        %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<{m}x{k}xf64, #CSR>
        %dense_tensor = arith.constant dense<{dense_data_str}> : tensor<{k}x{n}xf64>

        %computed_result = call @mul_ds(%sparse_tensor, %dense_tensor, %output) : 
            (tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>

        %expected_sum = arith.constant {expected_sum_str} : f64
        %sum = call @compute_sum(%computed_result) : (tensor<{m}x{n}xf64>) -> f64

        %is_equal = arith.cmpf oeq, %sum, %expected_sum : f64
        %result = arith.select %is_equal, %1, %2 : i32            
        return %result : i32
    }}

    func.func private @assemble_sparse_tensor() -> tensor<{m}x{k}xf64, #CSR> {{
        %values = arith.constant dense<[{', '.join(values)}]> : tensor<{len(values)}xf64>
        %col_indices = arith.constant dense<[{', '.join(map(str, col_indices))}]> : tensor<{len(col_indices)}xindex>
        %row_pointers = arith.constant dense<[{', '.join(map(str, row_pointers))}]> : tensor<{len(row_pointers)}xindex>

        %sparse_tensor = sparse_tensor.assemble (%row_pointers, %col_indices), %values
            : (tensor<{len(row_pointers)}xindex>, tensor<{len(col_indices)}xindex>), tensor<{len(values)}xf64> 
            to tensor<{m}x{k}xf64, #CSR>
        return %sparse_tensor : tensor<{m}x{k}xf64, #CSR>
    }}
}}"""

    def generate_sparse_sparse_mlir(self, sparse_matrix1: sp.csr_matrix, 
                                sparse_matrix2: sp.csr_matrix, 
                                sparsity: float, stride: int) -> str:
        """Generate MLIR for sparse-sparse matrix multiplication."""
        m, k = sparse_matrix1.shape
        k2, n = sparse_matrix2.shape

        if k != k2:
            raise ValueError(f"Matrix dimensions don't match: {k} vs {k2}")

        # Format both sparse matrices
        values1, col_indices1, row_pointers1, row_indices1 = self._get_csr_components(sparse_matrix1)
        values2, col_indices2, row_pointers2, row_indices2 = self._get_csr_components(sparse_matrix2)

        expected_result = sparse_matrix1.toarray() @ sparse_matrix2.toarray()
        expected_sum = np.sum(expected_result)
        expected_sum_str = self._format_float_literal(expected_sum)

        return f"""// Sparse-Sparse Matrix Multiplication
#CSR = #sparse_tensor.encoding<{{
    map = (d0, d1) -> (d0: dense, d1: compressed)
}}>

module {{
    func.func @compute_sum(%tensor: tensor<{m}x{n}xf64>) -> f64 {{
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %rows = arith.constant {m} : index
        %cols = arith.constant {n} : index
        %init = arith.constant 0.0 : f64

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

    func.func @sparse_sparse_matmul(
        %sparse1 : tensor<{m}x{k}xf64, #CSR>,
        %sparse2 : tensor<{k}x{n}xf64, #CSR>,
        %init : tensor<{m}x{n}xf64>
    ) -> tensor<{m}x{n}xf64> {{
        %result = linalg.matmul
            ins(%sparse1, %sparse2: tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64, #CSR>)
            outs(%init: tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        return %result : tensor<{m}x{n}xf64>
    }}

    func.func @main() -> i32 {{
        %1 = arith.constant 0 : i32  
        %2 = arith.constant 1 : i32
        %output = tensor.empty() : tensor<{m}x{n}xf64>
        %sparse_tensor1 = call @assemble_sparse_tensor1() : () -> tensor<{m}x{k}xf64, #CSR>
        %sparse_tensor2 = call @assemble_sparse_tensor2() : () -> tensor<{k}x{n}xf64, #CSR>

        %computed_result = call @sparse_sparse_matmul(%sparse_tensor1, %sparse_tensor2, %output) : 
            (tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64, #CSR>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>

        %expected_sum = arith.constant {expected_sum_str} : f64
        %sum = call @compute_sum(%computed_result) : (tensor<{m}x{n}xf64>) -> f64

        %is_equal = arith.cmpf oeq, %sum, %expected_sum : f64
        %result = arith.select %is_equal, %1, %2 : i32            
        return %result : i32
    }}

    func.func private @assemble_sparse_tensor1() -> tensor<{m}x{k}xf64, #CSR> {{
        %values = arith.constant dense<[{', '.join(values1)}]> : tensor<{len(values1)}xf64>
        %col_indices = arith.constant dense<[{', '.join(map(str, col_indices1))}]> : tensor<{len(col_indices1)}xindex>
        %row_pointers = arith.constant dense<[{', '.join(map(str, row_pointers1))}]> : tensor<{len(row_pointers1)}xindex>

        %sparse_tensor = sparse_tensor.assemble %row_pointers, %col_indices, %values
            : tensor<{len(row_pointers1)}xindex>, tensor<{len(col_indices1)}xindex>, tensor<{len(values1)}xf64> 
            to tensor<{m}x{k}xf64, #CSR>
        return %sparse_tensor : tensor<{m}x{k}xf64, #CSR>
    }}

    func.func private @assemble_sparse_tensor2() -> tensor<{k}x{n}xf64, #CSR> {{
        %values = arith.constant dense<[{', '.join(values2)}]> : tensor<{len(values2)}xf64>
        %col_indices = arith.constant dense<[{', '.join(map(str, col_indices2))}]> : tensor<{len(col_indices2)}xindex>
        %row_pointers = arith.constant dense<[{', '.join(map(str, row_pointers2))}]> : tensor<{len(row_pointers2)}xindex>

        %sparse_tensor = sparse_tensor.assemble %row_pointers, %col_indices, %values
            : tensor<{len(row_pointers2)}xindex>, tensor<{len(col_indices2)}xindex>, tensor<{len(values2)}xf64> 
            to tensor<{k}x{n}xf64, #CSR>
        return %sparse_tensor : tensor<{k}x{n}xf64, #CSR>
    }}
}}"""

    def save_mlir(self, mlir_content: str, filename: str, operation_type: str) -> None:
        """
        Save MLIR code to file in the appropriate directory.
        Args:
            mlir_content: MLIR code as string
            filename: Target filename
            operation_type: Type of operation ('matmul', 'elementwise', 'sparse')
        """
        filepath = self.output_dirs[operation_type] / filename
        with open(filepath, 'w') as f:
            f.write(mlir_content)

def main():
    """Main function to generate matrices and MLIR code."""
    size = 100
    sparsity_levels = [0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95]
    strides = [1, 2, 3, 4]

    # Create output directories
    Path("../matrixmul").mkdir(parents=True, exist_ok=True)
    Path("../elementwise").mkdir(parents=True, exist_ok=True)
    Path("../sparse_sparse").mkdir(parents=True, exist_ok=True)

    matrix_generator = MatrixGenerator("../matrices")
    mlir_generator = MlirGenerator()

    # Generate one dense matrix to be reused
    dense_matrix = matrix_generator.generate_dense_matrix(size, size)
    matrix_generator.save_dense_matrix(dense_matrix, "dense_matrix.npy")

    # Generate one additional sparse matrix for sparse-sparse multiplication
    sparse_matrix2 = matrix_generator.generate_sparse_matrix(size, 0.8, 2)  # Fixed parameters
    matrix_generator.save_sparse_matrix(sparse_matrix2, "sparse_matrix2.npz")

    for sparsity in sparsity_levels:
        for stride in strides:
            if stride < 4 or (stride == 4 and sparsity == 0.95):
                print(f"Generating for sparsity: {sparsity:.2f}, stride: {stride}")

                try:
                    # Generate sparse matrix
                    sparse_matrix = matrix_generator.generate_sparse_matrix(size, sparsity, stride)
                    sparse_filename = f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}.npz"
                    matrix_generator.save_sparse_matrix(sparse_matrix, sparse_filename)

                    # Generate and save all MLIR files
                    # 1. Sparse-Dense MatMul
                    matmul_mlir = mlir_generator.generate_matmul_mlir(
                        sparse_matrix, dense_matrix, sparsity, stride)
                    mlir_generator.save_mlir(
                        matmul_mlir, 
                        f"matmul_{int(sparsity*100)}_{stride}.mlir", 
                        'matmul')

                    # Save expected matmul sum
                    expected_matmul = sparse_matrix.toarray() @ dense_matrix
                    expected_matmul_sum = np.sum(expected_matmul)
                    with open(f"../matrixmul/matmul_{int(sparsity*100)}_{stride}_sum.txt", 'w') as f:
                        f.write(str(expected_matmul_sum))

                    # 2. Elementwise Multiplication
                    elementwise_mlir = mlir_generator.generate_elementwise_mlir(
                        sparse_matrix, dense_matrix, sparsity, stride)
                    mlir_generator.save_mlir(
                        elementwise_mlir, 
                        f"elementwise_{int(sparsity*100)}_{stride}.mlir", 
                        'elementwise')

                    # Save expected elementwise sum
                    expected_elementwise = sparse_matrix.toarray() * dense_matrix
                    expected_elementwise_sum = np.sum(expected_elementwise)
                    with open(f"../elementwise/elementwise_{int(sparsity*100)}_{stride}_sum.txt", 'w') as f:
                        f.write(str(expected_elementwise_sum))

                    # 3. Sparse-Sparse Multiplication
                    sparse_sparse_mlir = mlir_generator.generate_sparse_sparse_mlir(
                        sparse_matrix, sparse_matrix2, sparsity, stride)
                    mlir_generator.save_mlir(
                        sparse_sparse_mlir,
                        f"sparse_sparse_{int(sparsity*100)}_{stride}.mlir",
                        'sparse')

                    # Save expected sparse-sparse sum
                    expected_sparse_sparse = sparse_matrix.toarray() @ sparse_matrix2.toarray()
                    expected_sparse_sparse_sum = np.sum(expected_sparse_sparse)
                    with open(f"../sparse_sparse/sparse_sparse_{int(sparsity*100)}_{stride}_sum.txt", 'w') as f:
                        f.write(str(expected_sparse_sparse_sum))

                    print(f"✓ Generated files for sparsity {sparsity:.2f}, stride {stride}")

                except Exception as e:
                    print(f"✗ Error generating for sparsity {sparsity:.2f}, stride {stride}: {e}")

    print("Generation complete!")

if __name__ == "__main__":
    main()