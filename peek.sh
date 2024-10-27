#!/bin/bash

num_lines=${2:-3}

total_lines=$(cat "$1" | wc -l)

if [[ total_lines <= 2 * num_lines ]]; then
    cat "$1"
else
    echo "Warning: The file contains more than $((2 * num_lines)) lines."
    head -n "$num_lines" "$1"
    echo "..."
    tail -n "$num_lines" "$1"
fi

