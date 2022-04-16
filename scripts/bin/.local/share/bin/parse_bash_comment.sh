#!/bin/bash
# Generate markdown list of scripts name and their description.
# It assume every file in the directory is bash file starting with the
# first line #! 
# The next lines starting with # will be interpreted as the description
# of the script.

# Clean file
sed -i '/Available/,$d' 'README.md'

# Generate content
output="## Available scripts\n\n"
dir="./src/*"

# Loop through all the files
for filename in $dir; do
  output=$output"### ${filename##*/} \n\n"
  while IFS= read -r line || [[ -n "$line" ]]; do
    if [[ ${line:0:2} = '# ' ]]
    then
      #"${myString:1}"
      output=$output"${line:2}"
		# If the line start by a normal charater, not blank not ´#´
    elif [[ ${line:0:1} = ' ' ]]
    then
      break
    fi
  done < "$filename"
  output=$output"\n\n"
done

# Append to end of the file
printf "$output" >> 'README.md'

