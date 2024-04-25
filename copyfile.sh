#!/bin/bash


input_dir=$1
output_dir=$2


find "$input_dir" -type f | while read file; do
    basefile=$(basename "$file")
    ext="${basefile##*.}"
    name="${basefile%.*}"
    
    new_file="$output_dir/$basefile"
    count=1
    while [ -f "$new_file" ]; do
        new_file="$output_dir/${name}-$count.$ext"
        ((count++))
    done

    cp "$file" "$new_file"
done

