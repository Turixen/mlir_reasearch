k#!/bin/bash
set -e  # Stop on error

# Parameters
EXE_FILE="build/my_program"
RESULTS_BASE_DIR="results_vector"

mkdir -p "$RESULTS_BASE_DIR"

# Save the root directory path
ROOT_DIR="$(pwd)"
cd mlir_files

echo "$(pwd)"

# Find all Makefiles of the format Makefile_vector_x
for makefile in Makefile_vector_*; do
    [[ -e "$makefile" ]] || continue  # Skip if no Makefiles found

    # Extract the ID number from the Makefile name
    makefile_id=$(echo "$makefile" | grep -o '[0-9]\+$')

    if [[ -z "$makefile_id" ]]; then
        echo "❌ Error: Could not extract ID from $makefile"
        continue
    fi

    echo "[+] Using $makefile (ID: $makefile_id) for compilation"

    BUILD_DIR="build_${makefile_id}"
    # Fix: Use correct variable name and create results directory in the root
    RESULTS_DIR="${ROOT_DIR}/${RESULTS_BASE_DIR}/${RESULTS_BASE_DIR}_${makefile_id}"

    mkdir -p "$BUILD_DIR"
    mkdir -p "$RESULTS_DIR"

    for file in ./*.mlir; do
        echo "🔹 Processing file: $file"
        name="${file%.*}"
        name="${name#./}"  # Removes the leading ./

        if [[ -z "$name" ]]; then
            echo "❌ Error: Empty filename extracted from $file"
            continue
        fi

        # Create a separate directory for this file inside build_${makefile_id}/
        FILE_BUILD_DIR="$BUILD_DIR/${name}_vector"
        mkdir -p "$FILE_BUILD_DIR"

        echo "[+] Compiling MLIR file $name with $makefile..."
        make -f "$makefile" "$name"

        # Move output files to corresponding build dir
        for ext in llvm.mlir ll ""; do
            [[ -f "$name.$ext" ]] && mv "$name.$ext" "$FILE_BUILD_DIR/"
        done

        # Run perf test
        output_file="${RESULTS_DIR}/${RESULTS_BASE_DIR}_${name}.csv"
        echo "[+] Running perf test... Saving results to $output_file"

        # Fix: Use the correct path to the executable
        perf stat -r 10 -x, "$FILE_BUILD_DIR/$name" > "$output_file" 2>&1 || {
            echo "❌ Perf test failed for $name"
            continue
        }

        echo "[v] Test completed for $name. Results saved in $output_file"
    done
done
