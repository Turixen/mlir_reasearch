#!/bin/bash
set -e  # Stop on error

# Parameters
RESULTS_DIR="results_scalar"

mkdir -p $RESULTS_DIR
cd mlir_files

echo "$(pwd)"

BUILD_DIR="build"


for file in ./*.mlir; do

    echo "- Processing file: $file"
    name="${file%.*}"
    name="${name#./}"  # Removes the leading ./
    if [[ -z "$name" ]]; then
        echo "❌ Error: Empty filename extracted from $file"
        continue
    fi
    # Create a separate directory for this file inside build/
    FILE_BUILD_DIR="$BUILD_DIR/${name}_scalar"
    mkdir -p "$FILE_BUILD_DIR"

    # Compile
    echo "[+] Compiling MLIR file..."
    make -f Makefile_scalar "$name"

    executable_output_file="${RESULTS_DIR}/output_vector_${name}.txt"
    echo "[+] Running executable to capture output and exit code..."
    echo "$executable_output_file"
    echo > "$executable_output_file"

    {
        echo "${name} :"
        "$FILE_BUILD_DIR/$name"
        exit_code=$?
        echo ""
        echo "Exit Code: $exit_code"
    } > "$executable_output_file" 2>&1

    echo "[v] Executable output and exit code saved to $executable_output_file"

    # Move output files to corresponding build dir
    if [[ -f "./$name" ]]; then
        echo "Found executable ./$name, copying to $FILE_BUILD_DIR/"
        mv "./$name" "$FILE_BUILD_DIR/"
    else
        echo "Warning: Executable ./$name not found"
    fi
    
    # Move other intermediate files if they exist
    for ext in llvm.mlir ll S; do
        if [[ -f "$name.$ext" ]]; then
            echo "Copying $name.$ext to $FILE_BUILD_DIR/"
            mv "$name.$ext" "$FILE_BUILD_DIR/"
        fi
    done

    # Verify the executable exists in target directory
    if [[ ! -f "$FILE_BUILD_DIR/$name" ]]; then
        echo "❌ Executable not found at $FILE_BUILD_DIR/$name"
        continue
    fi

    # Run perf test
    output_file="${RESULTS_DIR}/${name}.csv"
    echo "[+] Running perf test... Saving results to $output_file"
    if ! perf stat -r 10 -x, "$FILE_BUILD_DIR/$name" > "$output_file" 2>&1; then
        echo "❌ Perf test failed for $name"
        continue
    fi
    echo "[v] Test completed for $name. Results saved in $output_file"

    executable_output_file="${RESULTS_DIR}/output_scalar_${name}.txt"

    echo "[+] Running executable to capture output..."
    {
        echo "${name} :"
        "$FILE_BUILD_DIR/$name"
    } > "$executable_output_file" 2>&1
    
    echo "[v] Executable output saved to $executable_output_file"
done
