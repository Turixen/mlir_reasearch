#!/bin/bash
set -e  # Stop on error

# Parameters
RESULTS_DIR="$(pwd)/results_scalar"

mkdir -p $RESULTS_DIR

# List of directories to process
DIRECTORIES=("mlir_files" "mlir_files_elementwise" "mlir_files_sparse")

for dir in "${DIRECTORIES[@]}"; do
    echo "Processing directory: $dir"
    if [[ ! -d "$dir" ]]; then
        echo "❌ Directory $dir not found, skipping..."
        continue
    fi
    
    cd "$dir"
    BUILD_DIR="build"

    for file in ./*.mlir; do
        # Skip if no mlir files found
        [[ -e "$file" ]] || continue

        echo "- Processing file: $file"
        name="${file%.*}"
        name="${name#./}"  # Removes the leading ./
        if [[ -z "$name" ]]; then
            echo "❌ Error: Empty filename extracted from $file"
            continue
        fi
        # Create a separate directory for this file inside build/
        mkdir -p "$BUILD_DIR"
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

        # Create a subdirectory in results for each source directory
        DIR_RESULTS_DIR="${RESULTS_DIR}/${dir}"
        mkdir -p "$DIR_RESULTS_DIR"
        
        # Run perf test
        output_file="${DIR_RESULTS_DIR}/${name}.csv"
        echo "[+] Running perf test... Saving results to $output_file"
        if ! perf stat -r 10 -x, "$FILE_BUILD_DIR/$name" > "$output_file" 2>&1; then
            echo "❌ Perf test failed for $name"

            executable_output_file="${DIR_RESULTS_DIR}/output_scalar_${name}.txt"
            # Append the exit status of the perf test to the output file
            echo $? > "$executable_output_file"
            echo "[v] Test completed for $name. Results saved in $executable_output_file"

            continue
        fi
    done
    
    cd ..
done