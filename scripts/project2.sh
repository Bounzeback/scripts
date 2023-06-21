#!/bin/bash

directory="project2"
file="Etechapp"
home_directory="/home/ubuntu"

mkdir "$home_directory/$directory"

echo "We are Etech Engineers" > "$home_directory/$directory/$file"

if [ -d "$home_directory/$directory" ]; then
  echo "Directory '$directory' created successfully."
else
  echo "Failed to create directory '$directory'."
fi

if [ -f "$home_directory/$directory/$file" ]; then
  echo "File '$file' yes, I got created today."
else
  echo "Failed to create file '$file'."
fi

