#!/bin/bash
set -e  # Stop on error

# Parameters
RESULTS_BASE_DIR="results_vector"

# List of directories to process
DIRECTORIES=("mlir_files" "mlir_files_elementwise" "mlir_files_sparse")

# Save the root directory path
ROOT_DIR="$(pwd)"

for dir in "${DIRECTORIES[@]}"; do
    echo "Processing directory: $dir"
    if [[ ! -d "$dir" ]]; then
        echo "❌ Directory $dir not found, skipping..."
        continue
    fi
    
    cd "$dir"
    echo "Working directory: $(pwd)"

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
        # Include directory name in results path
        RESULTS_DIR="${ROOT_DIR}/${RESULTS_BASE_DIR}/${dir}_${RESULTS_BASE_DIR}_${makefile_id}"
        mkdir -p "$BUILD_DIR"
        mkdir -p "$RESULTS_DIR"
        
        for file in ./*.mlir; do
            [[ -e "$file" ]] || continue  # Skip if no mlir files
            
            echo "- Processing file: $file"
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
            if ! make -f "$makefile" "$name"; then
                echo "❌ Compilation failed for $name with $makefile"
                continue
            fi
            
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
            output_file="${RESULTS_DIR}/${RESULTS_BASE_DIR}_${name}.csv"
            echo "[+] Running perf test... Saving results to $output_file"
            if ! perf stat -r 10 -x, "$FILE_BUILD_DIR/$name" > "$output_file" 2>&1; then
                echo "❌ Perf test failed for $name"
                # Append the exit status of the perf test to the output file
                executable_output_file="${RESULTS_DIR}/${RESULTS_BASE_DIR}_${name}.txt"
                echo $? > "$executable_output_file"
                echo "[v] Test completed for $name. Results saved in $executable_output_file"
                continue
            fi
        done
    done
    
    cd "$ROOT_DIR"
done