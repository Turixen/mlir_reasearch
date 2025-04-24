#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print each command before executing (useful for debugging)
# Uncomment the next line if you need verbose logging
# set -x

# Script parameters
EXE_FILE="build/my_program"
RESULTS_BASE_DIR="results_vector"
LOG_FILE="script_execution_$(date +%Y%m%d_%H%M%S).log"

# Log both to console and file
log() {
    echo -e "$1" | tee -a "$LOG_FILE"
}

error() {
    log "❌ ERROR: $1"
}

info() {
    log "[+] $1"
}

success() {
    log "[✓] $1"
}

# Function to check prerequisites
check_prerequisites() {
    local missing_tools=()
    
    # Check for required tools
    for tool in make perf; do
        if ! command -v "$tool" &> /dev/null; then
            missing_tools+=("$tool")
        fi
    done
    
    if [ ${#missing_tools[@]} -ne 0 ]; then
        error "Missing required tools: ${missing_tools[*]}"
        error "Please install them before running this script."
        exit 1
    fi
}

# Create necessary directories
setup_directories() {
    info "Creating result directory: $RESULTS_BASE_DIR"
    mkdir -p "$RESULTS_BASE_DIR"
    
    # Save the root directory path
    ROOT_DIR="$(pwd)"
    info "Root directory: $ROOT_DIR"
}

# Process a single MLIR file
process_mlir_file() {
    local file="$1"
    local makefile="$2"
    local makefile_id="$3"
    local build_dir="$4"
    local results_dir="$5"
    
    local name="${file%.*}"
    name="${name#./}" # Removes the leading ./
    
    if [[ -z "$name" ]]; then
        error "Empty filename extracted from $file"
        return 1
    fi
    
    info "🔹 Processing file: $file (basename: $name)"
    
    # Create a separate directory for this file inside build_${makefile_id}/
    local file_build_dir="$build_dir/${name}_vector"
    mkdir -p "$file_build_dir"
    
    # Compile MLIR file
    info "Compiling MLIR file $name with $makefile..."
    if ! make -f "$makefile" "$name" &>> "$LOG_FILE"; then
        error "Compilation failed for $name with $makefile"
        return 1
    fi
    
    # Move output files to corresponding build dir
    if [[ -f "./$name" ]]; then
        info "Found executable ./$name, moving to $file_build_dir/"
        mv -f "./$name" "$file_build_dir/"
    else
        error "Executable ./$name not found after compilation"
        return 1
    fi
    
    # Move other intermediate files if they exist
    for ext in llvm.mlir ll S; do
        if [[ -f "$name.$ext" ]]; then
            info "Moving $name.$ext to $file_build_dir/"
            mv -f "$name.$ext" "$file_build_dir/"
        fi
    done
    
    # Verify the executable exists and is executable
    if [[ ! -f "$file_build_dir/$name" ]]; then
        error "Executable not found at $file_build_dir/$name"
        return 1
    fi
    
    # Ensure executable has execution permissions
    chmod +x "$file_build_dir/$name"
    
    # Run perf test
    local output_file="${results_dir}/${RESULTS_BASE_DIR}_${name}.csv"
    info "Running perf test... Saving results to $output_file"
    
    # Add header to CSV file
    echo "command,cycles,instructions,branches,branch-misses,task-clock,context-switches,cpu-migrations,page-faults,time" > "$output_file"
    
    if ! perf stat -r 10 -x, "$file_build_dir/$name" >> "$output_file" 2>&1; then
        error "Perf test failed for $name"
        return 1
    fi
    
    success "Test completed for $name. Results saved in $output_file"
    return 0
}

# Process all makefiles and MLIR files
process_all_files() {
    cd mlir_files || { error "mlir_files directory not found"; exit 1; }
    info "Working directory: $(pwd)"
    
    # Find all Makefiles of the format Makefile_vector_x
    for makefile in Makefile_vector_*; do
        # Skip if no Makefiles found
        [[ -f "$makefile" ]] || { error "No Makefiles found matching pattern Makefile_vector_*"; return 1; }
        
        # Extract the ID number from the Makefile name
        makefile_id=$(echo "$makefile" | grep -o '[0-9]\+$')
        if [[ -z "$makefile_id" ]]; then
            error "Could not extract ID from $makefile"
            continue
        fi
        
        info "Using $makefile (ID: $makefile_id) for compilation"
        
        BUILD_DIR="build_${makefile_id}"
        RESULTS_DIR="${ROOT_DIR}/${RESULTS_BASE_DIR}/${RESULTS_BASE_DIR}_${makefile_id}"
        
        mkdir -p "$BUILD_DIR"
        mkdir -p "$RESULTS_DIR"
        
        # Process each MLIR file
        local success_count=0
        local total_files=0
        
        # Get a list of all MLIR files
        local mlir_files=(*.mlir)
        if [ ${#mlir_files[@]} -eq 0 ] || [ ! -f "${mlir_files[0]}" ]; then
            error "No MLIR files found in $(pwd)"
            continue
        fi
        
        for file in "${mlir_files[@]}"; do
            ((total_files++))
            if process_mlir_file "$file" "$makefile" "$makefile_id" "$BUILD_DIR" "$RESULTS_DIR"; then
                ((success_count++))
            fi
        done
        
        info "Completed processing $success_count/$total_files files successfully for $makefile"
    done
}

# Generate summary report
generate_summary() {
    info "Generating summary report..."
    
    # Return to root directory
    cd "$ROOT_DIR" || { error "Failed to return to root directory"; exit 1; }
    
    # Create a summary file
    local summary_file="${RESULTS_BASE_DIR}/summary.txt"
    {
        echo "====== Summary Report ======"
        echo "Execution Date: $(date)"
        echo "Results Directory: ${RESULTS_BASE_DIR}"
        echo ""
        echo "== Performance Results =="
        
        # Find all CSV files and extract key metrics
        find "${RESULTS_BASE_DIR}" -name "*.csv" | sort | while read -r csvfile; do
            local filename=$(basename "$csvfile")
            echo "File: $filename"
            
            # Skip first line (header) and get the first data line
            if [ -s "$csvfile" ] && [ $(wc -l < "$csvfile") -gt 1 ]; then
                # Extract and format key metrics
                local metrics=$(tail -n 1 "$csvfile" | cut -d, -f2,3,7,10)
                echo "  Key Metrics: $metrics"
            else
                echo "  No data or invalid CSV"
            fi
            echo ""
        done
        
        echo "=========================="
    } > "$summary_file"
    
    success "Summary report generated at $summary_file"
}

# Main function
main() {
    info "Starting MLIR compilation and performance testing script"
    
    check_prerequisites
    setup_directories
    process_all_files
    generate_summary
    
    success "Script execution completed successfully"
}

# Execute the main function
main
