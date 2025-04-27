#!/bin/bash
set -e  # Stop on error

# Parameters
RESULTS_DIR="$(pwd)/results_scalar"

mkdir -p $RESULTS_DIR
cd mlir_files

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

        executable_output_file="${RESULTS_DIR}/output_scalar_${name}.txt"
        # Append the exit status of the perf test to the output file
        echo $? > "$executable_output_file"
        echo "[v] Test completed for $name. Results saved in $executable_output_file"

        continue
    fi

done
