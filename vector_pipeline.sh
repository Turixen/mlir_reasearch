#!/bin/bash
set -e  # Stop on error

# Parameters
EXE_FILE="build/my_program"
RESULTS_DIR="../results_vector"

mkdir -p $RESULTS_DIR
cd mlir_files

echo "$(pwd)"

BUILD_DIR="build"


for file in ./*.mlir
do
    echo $file
    name="${file%.*}"
    name="${name#./}"  # Removes the leading ./

    # Create a separate directory for this file inside build/
    FILE_BUILD_DIR="$BUILD_DIR/${name}_vector"
    mkdir -p "$FILE_BUILD_DIR"

    echo "$name"

    # Compile
    echo "[+] Compiling MLIR file..."
    make -f Makefile_vector "$name"


    if [ -f "$name.llvm.mlir" ]; then mv "$name.llvm.mlir" "$FILE_BUILD_DIR/"; fi
    if [ -f "$name.ll" ]; then mv "$name.ll" "$FILE_BUILD_DIR/"; fi
    if [ -f "$name" ]; then mv "$name" "$FILE_BUILD_DIR/"; fi

    # Run perf test
    echo "[+] Running perf test..."
    perf stat -r 10 -x, "./$FILE_BUILD_DIR/$name" > "$RESULTS_DIR/$name.csv" 2>&1 || { echo "Perf test failed for $name"; continue; }

    # Generate Performance Chart
    #echo "[+] Generating performance chart..."
    #python3 scripts/plot_perf.py $PERF_LOG

    echo "[+] Test completed. Results saved in $PERF_LOG"
done

