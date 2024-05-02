#!/bin/bash

#получение директорий
input_dir=$1
output_dir=$2

# Используем опцию -iname с шаблоном '*', чтобы найти все файлы, включая скрытые
find "$input_dir" -type f -iname '*' | while read file; do
    #получение название файла без пути, его расширения и имени
    basefile=$(basename "$file")
    ext="${basefile##*.}"
    name="${basefile%.*}"
    #создание неповторяющегося названия файла
    new_file="$output_dir/$basefile"
    count=1
    while [[ -f "$new_file" ]]; do
        new_file="$output_dir/${name}-$count.$ext"
        ((count++))
    done
    #копирование файла
    cp "$file" "$new_file"
done
