#!/bin/bash

# Check if two arguments have been provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

# Get the start and end indices from the command-line arguments
start_index=$1
end_index=$2

# Generate the CSV file
for i in $(seq $start_index $end_index); do
  echo "$i, $((($i * 23) % 333 + 1))" >> inputFile
done

# Print a message
echo "File 'inputFile' has been generated successfully!"
