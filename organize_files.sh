#!/bin/bash
mkdir -p images docs music videos others

# Loop through all files in the current directory
for file in *; do
    if [ -d "$file" ]; then
        continue
    fi

    # Get file extension (lowercase)
    ext="${file##*.}"
    ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    case "$ext_lower" in
        jpg|jpeg|png|gif)
            mv "$file" images/
            ;;
        pdf|doc|docx|txt)
            mv "$file" docs/
            ;;
        mp3|wav)
            mv "$file" music/
            ;;
        mp4|mkv|avi)
            mv "$file" videos/
            ;;
        *)
            mv "$file" others/
            ;;
    esac
done
