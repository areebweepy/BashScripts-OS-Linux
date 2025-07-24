#!/bin/bash

TARGET_DIR=$1

if [ -z "$TARGET_DIR" ]; then
  echo "Usage: fileorganizer <directory>"
  exit 1
fi

declare -A file_types=(
  ["jpg"]="Images"
  ["jpeg"]="Images"
  ["png"]="Images"
  ["gif"]="Images"
  ["bmp"]="Images"
  ["svg"]="Images"
  ["tiff"]="Images"
  ["ico"]="Images"
  ["pdf"]="Documents"
  ["doc"]="Documents"
  ["docx"]="Documents"
  ["xls"]="Documents"
  ["xlsx"]="Documents"
  ["ppt"]="Documents"
  ["pptx"]="Documents"
  ["odt"]="Documents"
  ["ods"]="Documents"
  ["odp"]="Documents"
  ["txt"]="TextFiles"
  ["rtf"]="TextFiles"
  ["log"]="TextFiles"
  ["csv"]="TextFiles"
  ["mp3"]="Music"
  ["flac"]="Music"
  ["aac"]="Music"
  ["wav"]="Music"
  ["ogg"]="Music"
  ["mp4"]="Videos"
  ["avi"]="Videos"
  ["mkv"]="Videos"
  ["flv"]="Videos"
  ["mov"]="Videos"
  ["wmv"]="Videos"
  ["webm"]="Videos"
  ["zip"]="Archives"
  ["rar"]="Archives"
  ["7z"]="Archives"
  ["gz"]="Archives"
  ["tar"]="Archives"
  ["bz2"]="Archives"
  ["exe"]="Executables"
  ["sh"]="Scripts"
  ["bat"]="Scripts"
  ["deb"]="Packages"
  ["rpm"]="Packages"
  ["html"]="Web"
  ["htm"]="Web"
  ["css"]="Web"
  ["js"]="Web"
  ["php"]="Web"
  ["asp"]="Web"
  ["jsp"]="Web"
  ["xml"]="Web"
)
for file in "$TARGET_DIR"/*; do
  ext="${file##*.}"
  ext="${ext,,}"
 
  if [ "${file_types[$ext]+_}" ]; then
    target_dir="$TARGET_DIR/${file_types[$ext]}"
    mkdir -p "$target_dir"
    mv "$file" "$target_dir"
    echo "Moved $file to $target_dir/"
  else
    echo "No category defined for file type: $ext"
  fi
done

echo "File organization complete."
