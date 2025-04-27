// Sparse-Dense Matrix Multiplication
// Sparse Matrix: 10x10 with 50 non-zeros (0.50 sparsity, stride=1)
// Dense Matrix: 10x10
// Expected Result: 10x10
// Expected Sum: 12628.820004

#CSC = #sparse_tensor.encoding<{
map = (d0, d1) -> (d1: dense, d0: compressed)
}>

module {
func.func @sparse_dense_matmul(
    %sparse : tensor<10x10xf64, #CSC>,
    %dense : tensor<10x10xf64>,
    %init : tensor<10x10xf64>
) -> tensor<10x10xf64> {
    %result = linalg.matmul
    ins(%sparse, %dense: tensor<10x10xf64, #CSC>, tensor<10x10xf64>)
    outs(%init: tensor<10x10xf64>) -> tensor<10x10xf64>
    return %result : tensor<10x10xf64>
}

// Function to compute the sum of all elements in a tensor
func.func @compute_sum(%tensor: tensor<10x10xf64>) -> f64 {
%c0 = arith.constant 0 : index
%c1 = arith.constant 1 : index
%rows = arith.constant 10 : index
%cols = arith.constant 10 : index
%init = arith.constant 0.0 : f64 // Keep init as 0.0 (float)

%sum = scf.for %i = %c0 to %rows step %c1 iter_args(%sum_iter = %init) -> (f64) {
    %inner_sum = scf.for %j = %c0 to %cols step %c1 iter_args(%inner_sum_iter = %sum_iter) -> (f64) {
    %elem = tensor.extract %tensor[%i, %j] : tensor<10x10xf64>
    %new_sum = arith.addf %inner_sum_iter, %elem : f64
    scf.yield %new_sum : f64
    }
    scf.yield %inner_sum : f64
}
return %sum : f64
}

func.func @main() -> i32 {
    %output = tensor.empty() : tensor<10x10xf64>
    %sparse_tensor = call @assemble_sparse_tensor() : () -> tensor<10x10xf64, #CSC>
    %dense_tensor = arith.constant dense<[[9.511272, 5.077780, 8.242229, 3.750484, 2.953866, 7.370506, 3.469036, 1.095926, 2.973281, 8.264766], [9.443554, 9.402847, 8.574416, 5.536494, 0.567424, 9.468823, 4.693720, 3.929670, 3.274539, 6.035938], [1.241912, 4.961260, 2.922747, 1.482278, 2.669456, 4.322902, 2.891530, 7.778187, 2.293084, 0.561541], [3.818636, 7.337519, 0.195664, 1.902532, 0.535959, 8.905388, 4.340283, 1.471373, 3.338770, 3.942800], [9.882765, 9.566205, 9.858783, 7.475003, 1.626424, 8.847420, 7.173000, 5.921320, 1.278427, 7.003030], [7.559846, 9.016854, 0.696112, 0.834487, 4.436750, 9.133803, 3.940440, 4.690816, 6.540512, 7.216584], [2.062917, 3.355634, 1.113179, 4.681831, 4.084419, 0.719237, 7.080932, 4.229018, 6.093501, 4.081664], [5.581601, 5.929892, 8.855827, 8.114011, 1.647514, 4.406516, 0.895565, 2.778134, 8.201843, 7.055509], [7.062579, 3.590188, 9.408064, 7.474935, 2.362724, 5.872690, 0.793706, 0.902492, 7.354564, 2.615932], [7.130737, 3.333933, 1.123466, 2.393645, 8.780202, 3.740290, 2.323708, 3.949697, 0.925511, 7.826361]]> : tensor<10x10xf64>

    // Perform the matrix multiplication
    %computed_result = call @sparse_dense_matmul(%sparse_tensor, %dense_tensor, %output) :
    (tensor<10x10xf64, #CSC>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>

    // Compute the sum of all elements in the result tensor
    %sum = call @compute_sum(%computed_result) : (tensor<10x10xf64>) -> f64
    
    // Convert the sum to an integer by truncating
    %sum_as_int = arith.fptosi %sum : f64 to i32
    
    // Return the sum as the status code
    return %sum_as_int : i32
}

func.func private @assemble_sparse_tensor() -> tensor<10x10xf64, #CSC> {
    // Sparse tensor assembly data - Use the helper for values
    %values = arith.constant dense<[9.558876, 7.103318, 5.109612, 2.917833, 0.206512, 2.667624, 9.708702, 5.451087, 8.241977, 6.220612, 6.343621, 9.453203, 2.039993, 2.645316, 6.573361, 3.327509, 1.870578, 7.449907, 0.218599, 9.149667, 0.693065, 3.430434, 2.099611, 6.241233, 0.316504, 0.879886, 8.338198, 6.096694, 6.691527, 4.723251, 8.061108, 0.816005, 9.553777, 6.916203, 4.338692, 9.509969, 0.329013, 9.854238, 6.636013, 9.510544, 5.803892, 6.433634, 3.596518, 6.236402, 3.463524, 6.542379, 0.286674, 4.261977, 7.250934, 7.011074]> : tensor<50xf64>
    %row_indices = arith.constant dense<[2, 4, 5, 6, 7, 9, 4, 5, 6, 7, 0, 2, 3, 4, 7, 2, 3, 4, 5, 7, 9, 0, 1, 2, 3, 4, 5, 9, 3, 4, 6, 8, 9, 1, 2, 3, 4, 6, 9, 0, 1, 2, 3, 5, 6, 8, 9, 0, 2, 4]> : tensor<50xindex> // Keep as index
    %col_pointers = arith.constant dense<[0, 6, 10, 15, 21, 28, 33, 39, 39, 47, 50]> : tensor<11xindex> // Keep as index

    // Assemble the sparse tensor
    %sparse_tensor = sparse_tensor.assemble (%col_pointers, %row_indices), %values
    : (tensor<11xindex>, tensor<50xindex>), tensor<50xf64> to tensor<10x10xf64, #CSC>

    return %sparse_tensor : tensor<10x10xf64, #CSC>
}
}
