# Research activity on MLIR sparse vectorization

## Overview
This project automates the process of generating data, compiling MLIR files, executing them, and analyzing their performance. The workflow consists of:

1. **Generating test data** using `full_generator.py`
2. **Compiling and running MLIR programs** using `vector_pipeline.sh`
3. **Analyzing performance results** with `plot_perf.ipynb`

## Workflow and Files

### 1. Generating Data (`full_generator.py`)
This script generates sparse and dense matrices for benchmarking MLIR computations.

#### Features:
- Creates sparse matrices with configurable size and sparsity.
- Generates dense matrices of given dimensions.
- Saves the matrices in `.npz` or `.npy` format for later use.

#### Usage:
```sh
python full_generator.py
```

### 2. Compiling and Running MLIR Programs (`vector_pipeline.sh`)
This Bash script processes `.mlir` files, compiles them, and runs performance tests.

#### Features:
- Iterates over `.mlir` files in `mlir_files/`.
- Compiles each file using `Makefile_vector`.
- Runs performance tests using `perf stat` and saves results in `results_vector/`.

#### Usage:
```sh
chmod +x vector_pipeline.sh
./vector_pipeline.sh
```

### 3. Performance Analysis (`plot_perf.ipynb`)
A Jupyter Notebook for visualizing and analyzing the collected performance data.

#### Features:
- Loads performance results from `results_scalar/` and `results_vector/`.
- Uses `pandas`, `matplotlib`, and `seaborn` to generate comparison plots.

#### Setup:
```sh
pip install pandas matplotlib seaborn scipy
```

#### Usage:
Open the notebook and run the cells to generate performance plots.

## Requirements
Ensure you have the following installed:
- Python 3.x
- Pandas, Matplotlib, Seaborn, SciPy
- Bash (for `vector_pipeline.sh`)
- MLIR toolchain (for compiling MLIR files)


