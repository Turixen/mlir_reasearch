import os
import re
import matplotlib.pyplot as plt

# Folder containing perf result files
input_folder = "../perf_results"

# Function to extract cycle count from a perf output file
def extract_cycles(file_path):
    with open(file_path, "r") as f:
        lines = f.readlines()

    for line in lines:
        if "cycles" in line:
            match = re.search(r"([\d,]+\.?\d*)", line)
            if match:
                return int(match.group(1).replace(",", ""))
    return None  # Return None if no cycle count is found

# Process all perf result files
cycle_counts = {}
for filename in sorted(os.listdir(input_folder)):  # Sorted for better visualization
    if filename.endswith(".txt"):  # Process only .txt files
        file_path = os.path.join(input_folder, filename)
        cycles = extract_cycles(file_path)
        if cycles is not None:
            cycle_counts[filename] = cycles

# Plot the cycle count data
plt.figure(figsize=(12, 6))
plt.bar(cycle_counts.keys(), cycle_counts.values(), color="steelblue")
plt.xticks(rotation=45, ha="right", fontsize=10)
plt.ylabel("Cycle Count")
plt.title("Cycle Count Across Multiple Perf Runs")
plt.tight_layout()

# Save or show the plot
plt.savefig("cycle_count_plot.png")  # Save as an image
plt.show()
