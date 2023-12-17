#!/bin/bash

# Check if the input is a 4-digit integer
if [[ ! $1 =~ ^[0-9]{4}$ ]]; then
  echo "Invalid input. Please provide a 4-digit integer.Write the 4 digit integ>
  exit 1
fi

# Generate the hash using SHA-256
hash=$(echo -n "$1" | sha256sum | awk '{print $1}')

# Save the hash output to a file
echo "$hash" > hash_output.txt
