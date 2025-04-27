#!/bin/bash
executable="/root/gmastrotucci/mlir_reasearch/mlir_files/build/mlir_sparsity_50_stride_1_scalar/mlir_sparsity_50_stride_1"
name="mlir_sparsity_50_stride_1"
output_csv="mlir_sparsity_50_stride_1.csv"
executable_output_file="output_scalar_mlir_sparsity_50_stride_1.txt"

# Run the command and capture its exit code
perf stat -r 10 -x, $executable > $output_csv
exit_code=$?

# Save the exit code to the output file
echo $exit_code > "$executable_output_file"
echo "[v] Test completed for $name. Results saved in $executable_output_file"
