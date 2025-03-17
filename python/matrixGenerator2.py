import numpy as np
import scipy.sparse as sp
import os

def generate_sparse_matrix(size, sparsity, stride):
    """
    Genera una matrice sparsa con una data dimensione, sparsità e stride.
    :param size: dimensione della matrice (size x size)
    :param sparsity: livello di sparsità (es. 0.9 significa 90% di zeri)
    :param stride: spaziatura tra gli elementi non nulli
    :return: una matrice sparsa in formato CSC
    """
    density = 1.0 - sparsity
    num_nonzero = int(size * size * density)
    
    # Genera indici per gli elementi non nulli in base allo stride
    rows = np.arange(0, size, stride)
    cols = np.arange(0, size, stride)
    rows, cols = np.meshgrid(rows, cols)
    rows = rows.flatten()
    cols = cols.flatten()
    
    # Limita il numero di elementi non nulli in base alla densità
    if len(rows) > num_nonzero:
        indices = np.random.choice(len(rows), num_nonzero, replace=False)
        rows = rows[indices]
        cols = cols[indices]
    
    # Genera valori casuali per gli elementi non nulli
    data = np.random.rand(len(rows))
    
    # Crea la matrice sparsa in formato CSC
    matrix_csc = sp.csc_matrix((data, (rows, cols)), shape=(size, size))
    # Converti la matrice in formato CSR
    matrix_csr = matrix_csc.tocsr()
    return matrix_csc, matrix_csr

def generate_dense_matrix(rows, cols):
    """
    Genera una matrice densa di dimensioni rows x cols.
    :param rows: numero di righe
    :param cols: numero di colonne
    :return: una matrice numpy
    """
    return np.random.rand(rows, cols)

def generate_dense_vector(size):
    """
    Genera un vettore denso di una data dimensione.
    :param size: dimensione del vettore
    :return: un vettore numpy
    """
    return np.random.rand(size)

def compute_golden_model(matrix, vector):
    """
    Calcola il prodotto matrice-vettore (golden model).
    :param matrix: matrice sparsa
    :param vector: vettore denso
    :return: risultato del prodotto matrice-vettore
    """
    return matrix.dot(vector)

def save_matrix_and_vector(matrix, vector, result, dense_matrix, filename):
    """
    Salva la matrice sparsa, il vettore, il risultato e la matrice densa in file .npz e .txt.
    :param matrix: matrice sparsa
    :param vector: vettore denso
    :param result: risultato del prodotto matrice-vettore
    :param dense_matrix: matrice densa
    :param filename: nome base del file di output
    """
    # Salva in formato .npz
    np.savez(filename, matrix_data=matrix.data, matrix_indices=matrix.indices,
             matrix_indptr=matrix.indptr, vector=vector, result=result, dense_matrix=dense_matrix)
    
    # Salva la matrice sparsa in un file di testo
    with open(f"{filename}_matrix.txt", "w") as f:
        for i in range(matrix.shape[0]):
            row = matrix.getrow(i).toarray()[0]
            f.write(" ".join(map(str, row)) + "\n")
    
    # Salva il vettore in un file di testo
    with open(f"{filename}_vector.txt", "w") as f:
        f.write("\n".join(map(str, vector)))
    
    # Salva il risultato in un file di testo
    with open(f"{filename}_result.txt", "w") as f:
        f.write("\n".join(map(str, result)))
    
    # Salva la matrice densa in un file di testo
    with open(f"{filename}_dense_matrix.txt", "w") as f:
        for row in dense_matrix:
            f.write(" ".join(map(str, row)) + "\n")

def main():
    size = 100  # Matrici 100x100
    sparsity_levels = np.arange(0.5, 0.91, 0.05)  # Livelli di sparsità dal 50% al 90%
    strides = [1, 3, 5]  # Valori di stride da testare

    # Crea le cartelle "csc_matrici" e "csr_matrici" se non esistono
    csc_folder = "csc_matrici"
    csr_folder = "csr_matrici"
    if not os.path.exists(csc_folder):
        os.makedirs(csc_folder)
    if not os.path.exists(csr_folder):
        os.makedirs(csr_folder)

    for sparsity in sparsity_levels:
        for stride in strides:
            print(f"Generating matrix with sparsity {sparsity:.2f} and stride {stride}")
            matrix_csc, matrix_csr = generate_sparse_matrix(size, sparsity, stride)
            vector = generate_dense_vector(size)
            dense_matrix = generate_dense_matrix(size, size)  # Genera una matrice densa 100x100
            result_csc = compute_golden_model(matrix_csc, vector)
            result_csr = compute_golden_model(matrix_csr, vector)
            
            # Salva la matrice CSC, il vettore, il risultato e la matrice densa nella cartella "csc_matrici"
            filename_csc = f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}"
            filepath_csc = os.path.join(csc_folder, filename_csc)
            save_matrix_and_vector(matrix_csc, vector, result_csc, dense_matrix, filepath_csc)
            print(f"Saved CSC: {filepath_csc}.npz, {filepath_csc}_matrix.txt, {filepath_csc}_vector.txt, {filepath_csc}_result.txt, {filepath_csc}_dense_matrix.txt")
            
            # Salva la matrice CSR, il vettore, il risultato e la matrice densa nella cartella "csr_matrici"
            filename_csr = f"matrix_sparsity_{int(sparsity*100)}_stride_{stride}"
            filepath_csr = os.path.join(csr_folder, filename_csr)
            save_matrix_and_vector(matrix_csr, vector, result_csr, dense_matrix, filepath_csr)
            print(f"Saved CSR: {filepath_csr}.npz, {filepath_csr}_matrix.txt, {filepath_csr}_vector.txt, {filepath_csr}_result.txt, {filepath_csr}_dense_matrix.txt")

if __name__ == "__main__":
    main()