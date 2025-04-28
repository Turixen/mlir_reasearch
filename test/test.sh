for makefile in Makefile_vector_*; do
    [[ -e "$makefile" ]] || continue  # Skip if no Makefiles found

    for file in ./*.mlir; do
        echo "- Processing file: $file"
        name="${file%.*}"
        name="${name#./}"  # Removes the leading ./
        if [[ -z "$name" ]]; then
            echo "❌ Error: Empty filename extracted from $file"
            continue
        fi

        echo "[+] Compiling MLIR file $name with $makefile..."
        if ! make -f "$makefile" "$name"; then
            echo "❌ Compilation failed for $name with $makefile"
            continue
        fi

    done
done
