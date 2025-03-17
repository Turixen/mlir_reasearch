def read_matrix_from_file(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()
    
    # Remove any leading/trailing whitespace and split each line into individual numbers
    matrix = [list(map(float, line.strip().split())) for line in lines]
    
    return matrix

def print_matrix(matrix):
    for row in matrix:
        print(" ".join(f"{num:.6f}" for num in row))

if __name__ == "__main__":
    filename = "result_matrix.txt"
    matrix = read_matrix_from_file(filename)
    print_matrix(matrix)