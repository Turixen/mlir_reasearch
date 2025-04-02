#!/bin/bash
set -e  # Stop on error

# Parameters
EXE_FILE="build/my_program"
RESULTS_DIR="results_vector"

mkdir -p $RESULTS_DIR
cd mlir_files

echo "$(pwd)"

# Find all Makefiles of the format Makefile_vector_x
for makefile in ../Makefile_vector_*; do
    [[ -e "$makefile" ]] || continue  # Skip if no Makefiles found

    # Extract the ID number from the Makefile name
    makefile_id="${makefile##*_}"  # Get the last part after '_'
    
    echo "[+] Using $makefile for compilation"

    BUILD_DIR="build_${makefile_id}"
    mkdir -p "$BUILD_DIR"

    for file in ./*.mlir; do
        echo $file
        name="${file%.*}"
        name="${name#./}"  # Removes the leading ./

        # Create a separate directory for this file inside build_${makefile_id}/
        FILE_BUILD_DIR="$BUILD_DIR/${name}_vector"
        mkdir -p "$FILE_BUILD_DIR"

        echo "[+] Compiling MLIR file $name with $makefile..."
        make -f "$makefile" "$name"

        # Move output files to corresponding build dir
        if [ -f "$name.llvm.mlir" ]; then mv "$name.llvm.mlir" "$FILE_BUILD_DIR/"; fi
        if [ -f "$name.ll" ]; then mv "$name.ll" "$FILE_BUILD_DIR/"; fi
        if [ -f "$name" ]; then mv "$name" "$FILE_BUILD_DIR/"; fi

        # Run perf test
        echo "[+] Running perf test..."
        perf stat -r 10 -x, "./$FILE_BUILD_DIR/$name" > "../$RESULTS_DIR/$name_${makefile_id}.csv" 2>&1 || { echo "Perf test failed for $name"; continue; }

        echo "[+] Test completed for $name. Results saved in results_vector/$name_${makefile_id}.csv"
    done
done
