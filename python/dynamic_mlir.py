import numpy as np
from scipy.sparse import csc_matrix

# Funzione per leggere una matrice densa da un file
def read_dense_matrix(filename):
    return np.loadtxt(filename)

# Funzione per leggere una matrice sparsa in formato CSC da un file
def read_sparse_matrix(filename):
    data = np.load(filename)
    return csc_matrix((data['matrix_data'], data['matrix_indices'], data['matrix_indptr']), shape=data['matrix_shape'])

# Funzione per generare il contenuto MLIR
def generate_mlir_content(dense_matrix, sparse_matrix):
    m, k = sparse_matrix.shape  # Dimensioni della matrice sparsa
    k, n = dense_matrix.shape   # Dimensioni della matrice densa

    # Estrai i componenti della matrice sparsa (CSC)
    values = sparse_matrix.data.tolist()
    row_indices = sparse_matrix.indices.tolist()
    col_pointers = sparse_matrix.indptr.tolist()

    # Genera il contenuto MLIR
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


def process_matrices(directory):
    """Trova le coppie di matrici e genera i file MLIR."""
    files = os.listdir(directory)
    dense_files = {}
    sparse_files = {}
    
    # Organizza i file per sparsità e stride
    pattern = re.compile(r'matrix_sparsity_(\d+)_stride_(\d+)_(dense|)matrix\.txt')
    for file in files:
        match = pattern.match(file)
        if match:
            sparsity, stride, matrix_type = match.groups()
            key = (int(sparsity), int(stride))
            if matrix_type == 'dense':
                dense_files[key] = file
            else:
                sparse_files[key] = file
    
    # Genera file MLIR per ogni coppia
    for key in dense_files.keys() & sparse_files.keys():
        dense_matrix = read_matrix(os.path.join(directory, dense_files[key]))
        sparse_matrix = read_matrix(os.path.join(directory, sparse_files[key]))
        mlir_code = generate_mlir(dense_matrix, sparse_matrix, *key)
        
        mlir_filename = f"mlir_sparsity_{key[0]}_stride_{key[1]}.mlir"
        with open(os.path.join(directory, mlir_filename), 'w') as f:
            f.write(mlir_code)
        print(f"Generato: {mlir_filename}")



# Esempio di utilizzo
if __name__ == "__main__":
    # Leggi la matrice densa e la matrice sparsa
    process_matrices("./csc_matrici")
    # Genera il contenuto MLIR
    mlir_content = generate_mlir_content(dense_matrix, sparse_matrix)

    # Salva il contenuto MLIR in un file
    with open("output.mlir", "w") as f:
        f.write(mlir_content)

    print("File MLIR generato con successo: output.mlir")