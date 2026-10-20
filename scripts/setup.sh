#!/usr/bin/env bash
# Print an example setup summary without changing files.
set -euo pipefail

project_name="DelDia preview"
file_types=("C#" "JavaScript" "YAML")

show_summary() {
    local label="$1"
    printf 'Project: %s\n' "$label"
    for file_type in "${file_types[@]}"; do
        printf '  Supported sample: %s\n' "$file_type"
    done
}

show_summary "$project_name"
printf '%s\n' 'Example only: <ready> & "safe"'
