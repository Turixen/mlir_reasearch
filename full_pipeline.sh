#!/bin/bash
set -e  # Stop on error

# Parameters
EXE_FILE="build/my_program"
RESULTS_DIR="results"
PERF_LOG="$RESULTS_DIR/perf_results.txt"

mkdir -p $RESULTS_DIR

for file in /mlir_files/*
do
    name="${file%.*}"
    # Compile
    echo "[+] Compiling MLIR file..."
    make $name

    # Run perf test
    echo "[+] Running perf test..."
    perf stat -r 10 ./$name > $PERF_LOG 2>&1

    # Generate Performance Chart
    echo "[+] Generating performance chart..."
    python3 scripts/plot_perf.py $PERF_LOG

    echo "[+] Test completed. Results saved in $PERF_LOG"
done

