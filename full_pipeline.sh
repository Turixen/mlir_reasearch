#!/bin/bash
set -e  # Stop on error

# Parameters
default_m=200
default_k=200
default_n=200
default_sparsity=0.5

M=${1:-$default_m}
K=${2:-$default_k}
N=${3:-$default_n}
SPARSITY=${4:-$default_sparsity}

MLIR_FILE="test"
MLIR_PATH="src/$MLIR_FILE.mlir"
EXE_FILE="build/my_program"
RESULTS_DIR="results"
PERF_LOG="$RESULTS_DIR/perf_results.txt"

mkdir -p $RESULTS_DIR

# Generate MLIR
echo "[+] Generating MLIR file with M=$M, K=$K, N=$N, Sparsity=$SPARSITY..."
python3 scripts/grandezza_modificabile.py --m $M --k $K --n $N --sparsity $SPARSITY --output $MLIR_PATH

# Compile
echo "[+] Compiling MLIR file..."
make $MLIR_FILE

# Run perf test
echo "[+] Running perf test..."
perf stat -r 10 ./$MLIR_FILE > $PERF_LOG 2>&1

# Generate Performance Chart
echo "[+] Generating performance chart..."
python3 scripts/plot_perf.py $PERF_LOG

echo "[+] Test completed. Results saved in $PERF_LOG"
