#!/bin/bash

read -p "Enter the path of the folder containing markdown files: " folder_directory
read -p "Enter the path of the text file containing tags: " input_file

# Check if the input folder directory exists
if [ ! -d "$folder_directory" ]; then
  echo "Error: Folder directory $folder_directory does not exist."
  exit 1
fi

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file $input_file does not exist."
  exit 1
fi

# Read the tags from the input file
tags="tag:"
while IFS= read -r line; do
  tags="$tags #$line,"
done < "$input_file"

# Remove the trailing comma
tags=${tags%,}

# Loop through all markdown files in the folder directory
for file in "$folder_directory"/*.md; do
  echo "Processing file $file..."

  # Check if the file exists
  if [ ! -f "$file" ]; then
    echo "Error: File $file does not exist."
    continue
  fi

  # Add the tags to the end of the file
  echo "$tags" >> "$file"
done

echo "Finished adding tags to all markdown files in the folder $folder_directory."

