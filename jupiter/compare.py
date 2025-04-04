import os
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from matplotlib.colors import LinearSegmentedColormap
from matplotlib.gridspec import GridSpec
from typing import List, Optional, Tuple

class VectorPerformanceAnalyzer:
    """
    Analyzes vector performance metrics across different configurations.

    This class helps process, analyze, and visualize performance data
    from vector processing experiments, focusing on metrics like
    task clock, instruction counts, and memory-related statistics.
    """

    def __init__(self, base_dir: str, subdirs: List[str], metrics: List[str]):
        """
        Initializes the analyzer.

        Args:
            base_dir: Base directory where result subdirectories are located.
            subdirs: List of subdirectories to analyze (e.g., 'results_vector_64').
            metrics: List of performance metrics to extract from data files.
        """
        self.base_dir = base_dir
        self.subdirs = subdirs
        self.metrics = metrics
        self.df = None  # DataFrame to store the extracted data
        self.custom_palette = sns.color_palette("viridis", len(subdirs))
        self.heat_cmap = LinearSegmentedColormap.from_list(
            "vector_performance", ["#2c3e50", "#3498db", "#e74c3c"]
        )  # Custom colormap for heatmaps

    def _read_data_file(self, filepath: str, filename: str) -> dict:
        """
        Reads and parses a data file, extracting relevant metrics.

        Args:
            filepath (str): Path to the data file.
            filename (str): Name of the data file, used for extracting info.

        Returns:
            dict: A dictionary containing extracted data, or an empty dict on error.
        """
        try:
            with open(filepath, "r") as f:
                lines = f.readlines()
        except Exception as e:
            print(f"Error reading file {filepath}: {e}")
            return {}

        entry = {"file": filename}  # Store filename for reference

        for line in lines:
            parts = line.strip().split(",")
            if len(parts) >= 3 and parts[2] in self.metrics:
                try:
                    entry[parts[2]] = float(parts[0])
                except ValueError:
                    print(f"Warning: Could not parse value in {filepath}: {line}")

        return entry

    def _calculate_derived_metrics(self, entry: dict) -> None:
        """
        Calculates derived metrics like IPC and branch miss rate, modifying entry in place.

        Args:
            entry (dict): A dictionary containing the data read from a single file.
        """
        if "cycles" in entry and "instructions" in entry and entry["cycles"] != 0:
            entry["IPC"] = entry["instructions"] / entry["cycles"]

        if "branch-misses" in entry and "branches" in entry and entry["branches"] > 0:
            entry["branch-miss-rate"] = (
                entry["branch-misses"] / entry["branches"] * 100
            )

    def extract_data(self, stride_filter: str = "stride_1") -> pd.DataFrame:
        """
        Extracts performance data from files in specified subdirectories.

        Args:
            stride_filter:  Only process files containing this stride pattern.

        Returns:
            pd.DataFrame: A DataFrame containing the extracted and processed data.
                        Returns an empty DataFrame if no data is found.
        """
        data = []

        for subdir in self.subdirs:
            path = os.path.join(self.base_dir, subdir)
            if not os.path.exists(path):
                print(f"Warning: Path {path} does not exist")
                continue

            try:
                vector_length = int(subdir.split("_")[-1])
            except ValueError:
                print(
                    f"Warning: Could not extract vector length from subdir name: {subdir}"
                )
                continue

            for filename in os.listdir(path):
                if stride_filter not in filename:
                    continue

                filepath = os.path.join(path, filename)
                entry = self._read_data_file(filepath, filename)
                if not entry:  # Skip if file reading failed
                    continue

                # Extract sparsity from filename (more robustly)
                file_parts = filename.split("_")
                sparsity_idx = [
                    i for i, part in enumerate(file_parts) if "sparsity" in part
                ]
                sparsity = (
                    file_parts[sparsity_idx[0] + 1]
                    if sparsity_idx
                    else filename.split("_")[-2]
                )

                entry.update(
                    {
                        "vector_length": vector_length,
                        "sparsity": sparsity,
                    }
                )
                self._calculate_derived_metrics(entry)  # Calculate IPC, etc.
                data.append(entry)

        df = pd.DataFrame(data)

        if df.empty:
            print("Warning: No data found matching criteria")
            return df

        # Ensure sparsity is a categorical type
        df["sparsity"] = pd.Categorical(
            df["sparsity"],
            categories=sorted(df["sparsity"].unique()),
            ordered=True,
        )

        if "vector_length" in df.columns and "sparsity" in df.columns:
            df.set_index(["vector_length", "sparsity"], inplace=True)
            df = df.sort_index()

        self.df = df
        return df

    def create_dashboard(self, output_file: Optional[str] = None) -> plt.Figure:
        """
        Generates a performance dashboard with multiple plots.

        Args:
            output_file:  Path to save the figure (e.g., 'dashboard.png').

        Returns:
            plt.Figure: The generated Matplotlib Figure object.  Returns None on error.
        """
        if self.df is None or self.df.empty:
            print("No data available for plotting")
            return None

        plot_df = self.df.reset_index()  # Create a copy to avoid modifying original

        # Set up the figure and grid layout
        fig = plt.figure(figsize=(18, 14))
        gs = GridSpec(3, 2, figure=fig, wspace=0.3, hspace=0.4)

        # Set global plot style
        sns.set_style("whitegrid")
        plt.rcParams.update(
            {
                "font.size": 12,
                "axes.titlesize": 16,
                "axes.labelsize": 14,
                "xtick.labelsize": 12,
                "ytick.labelsize": 12,
                "legend.fontsize": 12,
                "figure.titleweight": "bold",
            }
        )

        # Create the individual plots
        ax1 = fig.add_subplot(gs[0, 0])
        self._plot_metric_by_vector_length(ax1, "task-clock", "Task Clock Performance")

        ax2 = fig.add_subplot(gs[0, 1])
        self._plot_instruction_cycle_relationship(ax2)

        ax3 = fig.add_subplot(gs[1, 0])
        mem_metrics = [
            m for m in self.df.columns if m in ["page-faults", "context-switches", "cpu-migrations"]
        ]
        if mem_metrics:
            self._plot_memory_metrics(ax3, mem_metrics)

        ax4 = fig.add_subplot(gs[1, 1])
        if "IPC" in self.df.columns:
            self._plot_efficiency_metrics(ax4, "IPC", "Instructions Per Cycle (IPC)")
        elif "cycles" in self.df.columns and "instructions" in self.df.columns:
            plot_df["IPC"] = plot_df["instructions"] / plot_df["cycles"]
            self._create_sparsity_grouped_bar(ax4, "IPC", "Instructions Per Cycle (IPC)")

        ax5 = fig.add_subplot(gs[2, 0])
        if "branch-miss-rate" in self.df.columns:
            self._create_heatmap(ax5, "branch-miss-rate", "Branch Miss Rate (%)")
        elif "branch-misses" in self.df.columns and "branches" in self.df.columns:
            plot_df["branch-miss-rate"] = (
                plot_df["branch-misses"] / plot_df["branches"] * 100
            )
            self._create_heatmap(ax5, "branch-miss-rate", "Branch Miss Rate (%)")

        ax6 = fig.add_subplot(gs[2, 1])
        self._create_parallel_coordinates(ax6)

        # Add a super title to the entire figure
        plt.suptitle(
            "Vector Performance Analysis Dashboard",
            fontsize=20,
            fontweight="bold",
            y=0.98,
        )
        plt.tight_layout(rect=[0, 0, 1, 0.96])  # Adjust layout to fit title

        if output_file:
            plt.savefig(output_file, dpi=300, bbox_inches="tight")
            print(f"Dashboard saved to {output_file}")

        return fig

    def _plot_metric_by_vector_length(self, ax: plt.Axes, metric: str, title: str) -> None:
        """
        Plots a metric as a function of vector length, with sparsity as a grouping variable.

        Args:
            ax:  Matplotlib Axes object to plot on.
            metric: The name of the metric to plot (e.g., 'task-clock').
            title:  Title of the plot.
        """
        if self.df is None or metric not in self.df.columns:
            ax.text(
                0.5,
                0.5,
                f"No data for {metric}",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = self.df.reset_index()

        sns.lineplot(
            data=plot_df,
            x="vector_length",
            y=metric,
            hue="sparsity",
            marker="o",
            markersize=8,
            linewidth=2,
            ax=ax,
        )

        ax.set_title(title, fontweight="bold")
        ax.set_xlabel("Vector Length", fontweight="bold")
        ax.set_ylabel(metric.replace("-", " ").title(), fontweight="bold")
        ax.grid(True, linestyle="--", alpha=0.7)

        # Add median trend line
        medians = plot_df.groupby("vector_length")[metric].median().reset_index()
        ax.plot(
            medians["vector_length"],
            medians[metric],
            "k--",
            linewidth=1.5,
            alpha=0.6,
            label="Median Trend",
        )

        handles, labels = ax.get_legend_handles_labels()
        ax.legend(
            handles, labels, title="Sparsity", loc="best", frameon=True, framealpha=0.9
        )
        ax.set_xticks(sorted(plot_df["vector_length"].unique()))  # Set x-ticks

    def _plot_instruction_cycle_relationship(self, ax: plt.Axes) -> None:
        """
        Creates a scatter plot showing the relationship between instruction count and cycle count.

        Args:
            ax: Matplotlib Axes object to plot on.
        """
        if (
            self.df is None
            or "cycles" not in self.df.columns
            or "instructions" not in self.df.columns
        ):
            ax.text(
                0.5,
                0.5,
                "No cycle/instruction data",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = self.df.reset_index()

        scatter = sns.scatterplot(
            data=plot_df,
            x="cycles",
            y="instructions",
            hue="sparsity",
            size="vector_length",
            sizes=(80, 250),
            alpha=0.7,
            edgecolor="w",
            linewidth=0.5,
            palette="viridis",
            ax=ax,
        )

        # Add regression lines
        sparsity_values = sorted(plot_df["sparsity"].unique())
        for sparsity in sparsity_values:
            subset = plot_df[plot_df["sparsity"] == sparsity]
            if len(subset) >= 2:
                sns.regplot(
                    x="cycles",
                    y="instructions",
                    data=subset,
                    scatter=False,
                    ci=None,
                    line_kws={"linestyle": "--", "alpha": 0.7, "linewidth": 1},
                    ax=ax,
                )

        # Add annotations for vector lengths
        for _, row in plot_df.iterrows():
            ax.annotate(
                f"{row['vector_length']}",
                (row["cycles"], row["instructions"]),
                xytext=(7, 0),
                textcoords="offset points",
                fontsize=10,
                alpha=0.8,
                bbox=dict(boxstyle="round,pad=0.1", fc="white", alpha=0.7, ec="none"),
            )

        # Add reference lines
        if len(plot_df) > 1:
            x_min, x_max = ax.get_xlim()
            y_min, y_max = ax.get_ylim()
            lims = [max(x_min, y_min), min(x_max, y_max)]
            ax.plot(lims, lims, "k--", alpha=0.5, zorder=0, label="1:1 IPC Ratio")

            ipc_values = [0.5, 2]
            ipc_colors = ["#e74c3c", "#2ecc71"]
            ipc_labels = ["IPC = 0.5", "IPC = 2"]
            for ipc, color, label in zip(ipc_values, ipc_colors, ipc_labels):
                ax.plot(
                    [lims[0], lims[1]],
                    [lims[0] * ipc, lims[1] * ipc],
                    linestyle=":",
                    color=color,
                    alpha=0.7,
                    label=label,
                )

        ax.set_title("Cycles vs Instructions Relationship", fontweight="bold")
        ax.set_xlabel("Cycles", fontweight="bold")
        ax.set_ylabel("Instructions", fontweight="bold")
        ax.grid(True, linestyle="--", alpha=0.5)

        # Add IPC annotations
        for _, row in plot_df.iterrows():
            if "cycles" in row and "instructions" in row and row["cycles"] > 0:
                ipc = row["instructions"] / row["cycles"]
                ax.annotate(
                    f"IPC: {ipc:.2f}",
                    (row["cycles"], row["instructions"]),
                    xytext=(7, -12),
                    textcoords="offset points",
                    fontsize=9,
                    alpha=0.7,
                )

        # Improve legend
        handles, labels = ax.get_legend_handles_labels()

        sparsity_handles = handles[: len(sparsity_values)]
        sparsity_labels = labels[: len(sparsity_values)]

        vector_handles = []
        vector_labels = []
        vector_lengths = sorted(plot_df["vector_length"].unique())
        for vl in vector_lengths:
            vector_handles.append(
                plt.Line2D(
                    [0],
                    [0],
                    marker="o",
                    color="w",
                    markerfacecolor="gray",
                    markersize=np.sqrt(6 + vl / 8),
                )
            )
            vector_labels.append(str(vl))

        ipc_handles = handles[-3:]
        ipc_labels = labels[-3:]

        ax.legend(
            sparsity_handles + vector_handles + ipc_handles,
            sparsity_labels + vector_labels + ipc_labels,
            title="Sparsity & Vector Length",
            loc="best",
            frameon=True,
            framealpha=0.9,
            ncol=1,
        )

    def _plot_memory_metrics(self, ax: plt.Axes, metrics: List[str]) -> None:
        """
        Plots memory-related metrics (e.g., page faults) using grouped bar charts.

        Args:
            ax: Matplotlib Axes object for plotting.
            metrics: List of memory-related metrics to plot.
        """
        if self.df is None:
            ax.text(
                0.5,
                0.5,
                "No memory metrics data",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = self.df.reset_index()
        vector_lengths = sorted(plot_df["vector_length"].unique())

        norm_df = plot_df.copy()
        for metric in metrics:
            max_val = plot_df[metric].max()
            min_val = plot_df[metric].min()
            norm_df[f"{metric}_norm"] = (
                (plot_df[metric] - min_val) / (max_val - min_val)
                if max_val > min_val
                else 0.5
            )

        bar_width = 0.7 / len(metrics)
        colors = sns.color_palette("Set2", len(metrics))
        x_pos = np.arange(len(vector_lengths))

        for i, metric in enumerate(metrics):
            metric_values = []
            for length in vector_lengths:
                subset = norm_df[norm_df["vector_length"] == length]
                avg_value = subset[f"{metric}_norm"].mean()
                metric_values.append(avg_value)

            positions = x_pos + (i - len(metrics) / 2 + 0.5) * bar_width
            bars = ax.bar(
                positions,
                metric_values,
                width=bar_width,
                label=metric.replace("-", " ").title(),
                color=colors[i],
                alpha=0.8,
                edgecolor="white",
                linewidth=0.7,
            )

            for j, bar in enumerate(bars):
                height = bar.get_height()
                actual_value = plot_df[plot_df["vector_length"] == vector_lengths[j]][
                    metric
                ].mean()
                ax.text(
                    bar.get_x() + bar.get_width() / 2.0,
                    height + 0.03,
                    f"{actual_value:.1f}",
                    ha="center",
                    va="bottom",
                    fontsize=10,
                    rotation=0,
                )

        for i, metric in enumerate(metrics):
            trend_data = []
            for j, length in enumerate(vector_lengths):
                subset = norm_df[norm_df["vector_length"] == length]
                avg_value = subset[f"{metric}_norm"].mean()
                trend_data.append(
                    (x_pos[j] + (i - len(metrics) / 2 + 0.5) * bar_width, avg_value)
                )
            xs, ys = zip(*trend_data)
            ax.plot(xs, ys, "o-", color=colors[i], alpha=0.6, linewidth=1.5, markersize=4)

        patterns = ["/", "\\", "|", "-", "+", "x", "o", "O", ".", "*"]
        for i, bar in enumerate(ax.patches):
            bar.set_hatch(patterns[i % len(patterns)])

        sparsity_values = sorted(plot_df["sparsity"].unique())
        table_text = []
        for vl in vector_lengths:
            subset = plot_df[plot_df["vector_length"] == vl]
            sparses = subset["sparsity"].unique()
            table_text.append(f"Vec{vl}: {', '.join(sparses)}")

        props = dict(boxstyle="round", facecolor="white", alpha=0.7)
        ax.text(
            0.02,
            0.98,
            "\n".join(table_text),
            transform=ax.transAxes,
            fontsize=9,
            verticalalignment="top",
            bbox=props,
        )

        ax.set_title("Memory-Related Metrics Comparison", fontweight="bold")
        ax.set_xlabel("Vector Length", fontweight="bold")
        ax.set_ylabel("Normalized Value", fontweight="bold")
        ax.set_xticks(x_pos)
        ax.set_xticklabels(vector_lengths)
        ax.grid(True, linestyle="--", alpha=0.3, axis="y")

        ax_right = ax.twinx()
        ax_right.set_ylabel("Scale: 0=min, 1=max", fontsize=10)
        ax_right.set_yticks([0, 0.25, 0.5, 0.75, 1.0])
        ax_right.set_yticklabels(["min", "25%", "50%", "75%", "max"])
        ax_right.tick_params(axis="y", labelsize=10)

        ax.legend(
            title="Metrics",
            loc="upper center",
            bbox_to_anchor=(0.5, -0.15),
            fancybox=True,
            shadow=True,
            ncol=len(metrics),
        )

        for i, metric in enumerate(metrics):
            min_idx = np.argmin(
                [
                    plot_df[plot_df["vector_length"] == vl][metric].mean()
                    for vl in vector_lengths
                ]
            )
            x = x_pos[min_idx] + (i - len(metrics) / 2 + 0.5) * bar_width
            y = norm_df[norm_df["vector_length"] == vector_lengths[min_idx]][
                f"{metric}_norm"
            ].mean()
            ax.annotate(
                "Best",
                xy=(x, y),
                xytext=(0, 10),
                textcoords="offset points",
                ha="center",
                fontsize=9,
                bbox=dict(boxstyle="round,pad=0.1", fc="#2ecc71", alpha=0.7, ec="none"),
            )

    def _plot_efficiency_metrics(self, ax: plt.Axes, metric: str, title: str) -> None:
        """
        Visualizes efficiency metrics (e.g., IPC) using violin and box plots.

        Args:
            ax:    Matplotlib Axes object for plotting.
            metric:  Name of the efficiency metric.
            title:   Title of the plot.
        """
        if self.df is None or metric not in self.df.columns:
            ax.text(
                0.5,
                0.5,
                f"No data for {metric}",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = self.df.reset_index()

        sns.violinplot(
            data=plot_df,
            x="vector_length",
            y=metric,
            hue="sparsity",
            palette="coolwarm",
            split=False,
            inner=None,
            linewidth=1,
            cut=0,
            ax=ax,
            saturation=0.75,
        )

        sns.boxplot(
            data=plot_df,
            x="vector_length",
            y=metric,
            hue="sparsity",
            palette="coolwarm",
            width=0.3,
            ax=ax,
            boxprops=dict(alpha=0.7),
            showfliers=False,
            dodge=True,
        )

        handles, labels = ax.get_legend_handles_labels()
        ax.legend(
            handles[: len(plot_df["sparsity"].unique())],
            labels[: len(plot_df["sparsity"].unique())],
            title="Sparsity",
            loc="best",
        )

        mean_val = plot_df[metric].mean()
        ax.axhline(
            y=mean_val,
            color="k",
            linestyle="--",
            alpha=0.5,
            label=f"Mean: {mean_val:.2f}",
        )

        for vl in sorted(plot_df["vector_length"].unique()):
            subset = plot_df[plot_df["vector_length"] == vl]
            best_idx = subset[metric].idxmax()
            best_sparsity = subset.iloc[
                subset.index.get_indexer([best_idx])
            ]["sparsity"].values[0]
            best_val = subset.iloc[subset.index.get_indexer([best_idx])][
                metric
            ].values[0]

            x_pos = list(sorted(plot_df["vector_length"].unique())).index(vl)
            ax.annotate(
                f"Best: {best_val:.2f}\n({best_sparsity})",
                xy=(x_pos, best_val),
                xytext=(0, 5),
                textcoords="offset points",
                ha="center",
                fontsize=10,
                bbox=dict(boxstyle="round,pad=0.1", fc="yellow", alpha=0.7, ec="none"),
            )

        ax.set_title(title, fontweight="bold")
        ax.set_xlabel("Vector Length", fontweight="bold")
        ax.set_ylabel(metric, fontweight="bold")
        ax.grid(True, linestyle="--", alpha=0.5, axis="y")

        y_min, y_max = ax.get_ylim()
        if y_max - y_min > 0.1:
            ax_right = ax.twinx()
            ax_right.set_ylim(0, 100)
            ax_right.set_ylabel("% of Maximum", fontsize=10)
            for pct in [25, 50, 75]:
                y_val = y_min + (y_max - y_min) * pct / 100
                ax.axhline(y=y_val, color="gray", linestyle=":", alpha=0.3)

    def _create_sparsity_grouped_bar(self, ax: plt.Axes, metric: str, title: str) -> None:
        """
        Creates a grouped bar chart to visualize a metric, grouped by sparsity.

        Args:
          ax:     Matplotlib Axes object.
          metric:  The metric to plot.
          title:   The title of the plot.
        """
        if self.df is None:
            ax.text(
                0.5,
                0.5,
                f"No data for {metric}",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = (
            self.df.reset_index() if hasattr(self.df, "reset_index") else self.df
        )  # Handle potential index issues

        if metric not in plot_df.columns:
            ax.text(
                0.5,
                0.5,
                f"No data for {metric}",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        sns.barplot(
            data=plot_df,
            x="vector_length",
            y=metric,
            hue="sparsity",
            palette="coolwarm",
            ax=ax,
        )

        for i, bar in enumerate(ax.patches):
            height = bar.get_height()
            if not np.isnan(height):
                ax.text(
                    bar.get_x() + bar.get_width() / 2.0,
                    height + 0.02,
                    f"{height:.2f}",
                    ha="center",
                    va="bottom",
                    fontsize=10,
                    rotation=45,
                )

        ax.set_title(title, fontweight="bold")
        ax.set_xlabel("Vector Length", fontweight="bold")
        ax.set_ylabel(metric, fontweight="bold")
        ax.grid(True, linestyle="--", alpha=0.7)

        handles, labels = ax.get_legend_handles_labels()
        ax.legend(handles, labels, title="Sparsity", loc="best")

    def _create_heatmap(self, ax: plt.Axes, metric: str, title: str) -> None:
        """
        Generates a heatmap to visualize a metric across vector lengths and sparsities.

        Args:
            ax:     Matplotlib Axes object.
            metric:  The metric to visualize.
            title:   Title of the heatmap.
        """
        if self.df is None or metric not in self.df.columns:
            ax.text(
                0.5,
                0.5,
                f"No data for {metric}",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        plot_df = self.df.reset_index()
        pivot_data = plot_df.pivot(
            index="vector_length", columns="sparsity", values=metric
        )

        sns.heatmap(
            pivot_data,
            annot=True,
            fmt=".2f",
            cmap=self.heat_cmap,
            linewidths=0.5,
            ax=ax,
            cbar_kws={"label": metric, "shrink": 0.8},
        )

        ax.set_title(title, fontweight="bold")
        ax.set_xlabel("Sparsity", fontweight="bold")
        ax.set_ylabel("Vector Length", fontweight="bold")

    def _create_parallel_coordinates(self, ax: plt.Axes) -> None:
        """
        Creates a parallel coordinates plot to visualize multiple metrics.

        Args:
            ax: Matplotlib Axes object.
        """
        if self.df is None:
            ax.text(
                0.5,
                0.5,
                "No data for parallel coordinates",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        pc_metrics = ["task-clock", "cycles", "instructions", "branch-misses", "page-faults"]
        pc_metrics = [m for m in pc_metrics if m in self.df.columns]

        if len(pc_metrics) < 2:
            ax.text(
                0.5,
                0.5,
                "Not enough metrics for parallel coordinates",
                ha="center",
                va="center",
                fontsize=12,
            )
            return

        norm_df = self.df.reset_index().copy()
        for metric in pc_metrics:
            max_val = norm_df[metric].max()
            min_val = norm_df[metric].min()
            norm_df[metric] = (
                (norm_df[metric] - min_val) / (max_val - min_val)
                if max_val > min_val
                else 0.5
            )

        pd.plotting.parallel_coordinates(
            norm_df,
            "vector_length",
            cols=pc_metrics,
            color=plt.cm.Set2.colors,
            ax=ax,
        )

        ax.set_title("Performance Metrics Comparison (Normalized)", fontweight="bold")
        ax.grid(True, linestyle="--", alpha=0.7)

        handles, labels = ax.get_legend_handles_labels()
        ax.legend(
            handles, labels, title="Vector Length", loc="upper right", fontsize=10
        )
        plt.setp(ax.get_xticklabels(), rotation=30, ha="right", fontsize=10)

    def generate_summary_statistics(self) -> Tuple[pd.DataFrame, Optional[pd.DataFrame]]:
        """
        Generates summary statistics for the loaded data.

        Returns:
            Tuple of:
                pd.DataFrame: Summary statistics (mean, min, max, std) for each metric.
                pd.DataFrame or None: DataFrame of improvement ratios, or None if not applicable.
        """
        if self.df is None or self.df.empty:
            print("No data available for statistics")
            return pd.DataFrame(), None

        summary = self.df.groupby(level=["vector_length", "sparsity"]).agg(
            ["mean", "min", "max", "std"]
        )

        vector_lengths = sorted(self.df.index.get_level_values("vector_length").unique())
        if len(vector_lengths) <= 1:
            return summary, None  # Not enough data for improvement ratios

        base_length = min(vector_lengths)
        improvement_data = []

        for metric in self.metrics:
            if metric not in self.df.columns:
                continue
            for length in vector_lengths:
                if length == base_length:
                    continue
                for sparsity in self.df.index.get_level_values("sparsity").unique():
                    try:
                        base_val = self.df.loc[(base_length, sparsity), metric]
                        current_val = self.df.loc[(length, sparsity), metric]
                        ratio = (
                            base_val / current_val if current_val != 0 else float("inf")
                        )
                        percent_change = (
                            (current_val - base_val) / base_val * 100
                            if base_val != 0
                            else float("inf")
                        )

                        improvement_data.append(
                            {
                                "vector_length": length,
                                "sparsity": sparsity,
                                "metric": metric,
                                "improvement_ratio": ratio,
                                "percent_change": percent_change,
                            }
                        )
                    except (KeyError, TypeError):
                        continue  # Handle missing data points

        if improvement_data:
            improvement_df = pd.DataFrame(improvement_data)
            improvement_df.set_index(
                ["vector_length", "sparsity", "metric"], inplace=True
            )
            return summary, improvement_df

        return summary, None

# Set up the analyzer
base_dir = "results_vector"
subdirs = subdirs
metrics = ["task-clock", "context-switches", "cpu-migrations", "page-faults", 
           "cycles", "instructions", "branches", "branch-misses"]

analyzer = VectorPerformanceAnalyzer(base_dir, subdirs, metrics)

# Extract data
df = analyzer.extract_data(stride_filter="stride_1")
print("Vector lengths analyzed:", df.index.get_level_values('vector_length').unique())
# Generate the dashboard
fig = analyzer.create_dashboard(output_file="vector_performance_dashboard.png")

