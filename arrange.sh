#!/bin/bash

origin="files"

#loop for distribution
for file in "$origin"/*.txt; do
    if [ -f "$file" ]; then
        #txt distriuction
        first_char="$(basename "$file" .txt | cut -c 1 | tr '[:upper:]' '[:lower:]')"

        target="$first_char"

        #move file to target folder
        mkdir -p "$target"
        mv "$file" "$target/"
    fi
done

echo "Done"

