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

        # Strided positions
        strided_positions = [(i, j) for i in range(0, size, stride)
                             for j in range(0, size, stride)]

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
                remaining_positions = np.argwhere(mask)
                num_candidates = remaining_positions.shape[0]
                take = min(remaining, num_candidates)
                selected = remaining_positions[np.random.choice(num_candidates, take, replace=False)]
                row_indices.extend(selected[:, 0])
                col_indices.extend(selected[:, 1])
                values.extend([random.random() * 10 for _ in range(selected.shape[0])])

        coo = sp.coo_matrix((values, (row_indices, col_indices)), shape=(size, size))
        return coo.tocsr()

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
        Save a CSR sparse matrix to file.

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
        Load a CSR sparse matrix from file.

        Args:
            filepath: Path to the saved matrix

        Returns:
            The loaded CSR sparse matrix
        """
        loaded = np.load(filepath)
        data = loaded['matrix_data']
        indices = loaded['matrix_indices']
        indptr = loaded['matrix_indptr']
        shape = tuple(loaded['matrix_shape'])
        return sp.csr_matrix((data, indices, indptr), shape=shape)

class MlirGenerator:
    """Class for generating MLIR code for sparse matrix multiplication using CSR."""

    def __init__(self, output_dir: str = "../mlir_files"):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(parents=True, exist_ok=True)

    def _format_float_literal(self, val: float) -> str:
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
        rows = []
        for row in matrix.tolist():
            formatted_row = [self._format_float_literal(val) for val in row]
            rows.append(f"[{', '.join(formatted_row)}]")
        return f"[{', '.join(rows)}]"

    def generate_mlir(self,
                     sparse_matrix: sp.csr_matrix,
                     dense_matrix: np.ndarray,
                     sparsity: float,
                     stride: int) -> str:
        m, k = sparse_matrix.shape
        k2, n = dense_matrix.shape
        if k != k2:
            raise ValueError(f"Matrix dimensions don't match: {k} vs {k2}")

        # CSR data
        values = [self._format_float_literal(v) for v in sparse_matrix.data.tolist()]
        col_indices = sparse_matrix.indices.tolist()
        row_pointers = sparse_matrix.indptr.tolist()

        # Compute expected
        expected = sparse_matrix.toarray() @ dense_matrix

        dense_str = self._format_dense_matrix(dense_matrix)
        expected_str = self._format_dense_matrix(expected)

        mlir = f"""// Sparse-Dense Matrix Multiplication using CSR
#CSR = #sparse_tensor.encoding<{{ 
   map = (d0, d1) -> (d0: compressed, d1: dense) 
}}>

module {{
    func.func @sparse_dense_matmul(%sparse: tensor<{m}x{k}xf64, #CSR>,%dense: tensor<{k}x{n}xf64>,%init: tensor<{m}x{n}xf64>
    ) -> tensor<{m}x{n}xf64> {{
        %res = linalg.matmul ins(%sparse, %dense: tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>) 
            outs(%init: tensor<{m}x{n}xf64) -> tensor<{m}x{n}xf64>
        return %res : tensor<{m}x{n}xf64>
    }}

    func.func @main() -> i32 {{
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %rows = arith.constant {m} : index
        %cols = arith.constant {n} : index
        %zero_f64 = arith.constant 0.0 : f64

        %init = tensor.empty() : tensor<{m}x{n}xf64>
        %sparse = call @assemble_sparse() : () -> tensor<{m}x{k}xf64, #CSR>
        %dense = arith.constant dense<{dense_str}> : tensor<{k}x{n}xf64>

        %computed = call @sparse_dense_matmul(%sparse, %dense, %init) : (tensor<{m}x{k}xf64, #CSR>, tensor<{k}x{n}xf64>, tensor<{m}x{n}xf64>) -> tensor<{m}x{n}xf64>
        %expected = arith.constant dense<{expected_str}> : tensor<{m}x{n}xf64>

        // Validate each element
        %false = arith.constant false : i1
        %flag = scf.for %i = %c0 to %rows step %c1 iter_args(%f_iter = %false) -> (i1) {{
        %flag_row = scf.for %j = %c0 to %cols step %c1 iter_args(%f_in = %f_iter) -> (i1) {{
            %cmp_c = tensor.extract %computed[%i, %j] : tensor<{m}x{n}xf64>
            %cmp_e = tensor.extract %expected[%i, %j] : tensor<{m}x{n}xf64>
            %neq = arith.cmpf une, %cmp_c, %cmp_e : f64
            %new_f = arith.or %f_in, %neq : i1
            scf.yield %new_f : i1
        }}
        scf.yield %flag_row : i1
        }}

        %zero_i32 = arith.constant 0 : i32
        %one_i32 = arith.constant 1 : i32
        %status = scf.if %flag -> (i32) {{
        scf.yield %one_i32 : i32
        }} else {{
        scf.yield %zero_i32 : i32
        }}
        return %status : i32
    }}

    func.func @assemble_sparse() -> tensor<{m}x{k}xf64, #CSR> {{
        %values = arith.constant dense<[{', '.join(values)}]> : tensor<{len(values)}xf64>
        %row_ptr = arith.constant dense<[{', '.join(map(str, row_pointers))}]> : tensor<{len(row_pointers)}xindex>
        %col_ind = arith.constant dense<[{', '.join(map(str, col_indices))}]> : tensor<{len(col_indices)}xindex>
        %s = sparse_tensor.assemble(%row_ptr, %col_ind), %values : (tensor<{len(row_pointers)}xindex>, tensor<{len(col_indices)}xindex>), tensor<{len(values)}xf64> -> tensor<{m}x{k}xf64, #CSR>
        return %s : tensor<{m}x{k}xf64, #CSR>
    }}

}}
"""
        return mlir

    def save_mlir(self, content: str, filename: str) -> None:
        path = self.output_dir / filename
        with open(path, 'w') as f:
            f.write(content)


def main():
    size = 100
    sparsity_levels = [0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95]
    strides = [1, 2, 3, 4]

    mg = MatrixGenerator("../matrices")
    mg_mlir = MlirGenerator("../mlir_files")
    Path("../matrixmul").mkdir(parents=True, exist_ok=True)

    for sp_level in sparsity_levels:
        for st in strides:
            if st < 4 or (st == 4 and sp_level == 0.95):
                try:
                    sparse = mg.generate_sparse_matrix(size, sp_level, st)
                    dense = mg.generate_dense_matrix(size, size)

                    sf = f"sparse_sp{int(sp_level*100)}_st{st}.npz"
                    df = f"dense_sp{int(sp_level*100)}_st{st}.npy"
                    mg.save_sparse_matrix(sparse, sf)
                    mg.save_dense_matrix(dense, df)

                    mlir = mg_mlir.generate_mlir(sparse, dense, sp_level, st)
                    mf = f"sp{int(sp_level*100)}_st{st}.mlir"
                    mg_mlir.save_mlir(mlir, mf)

                    # Optionally save expected result
                    result = sparse.toarray() @ dense
                    out_path = f"../matrixmul/result_sp{int(sp_level*100)}_st{st}.txt"
                    np.savetxt(out_path, result, fmt="%.6f")
                except Exception as e:
                    print(f"Error at sparsity={sp_level}, stride={st}: {e}")

if __name__ == "__main__":
    main()
