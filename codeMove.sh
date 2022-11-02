#!/bin/bash
cd ~
if [ -d code ]; then
  echo "code directory already exists, continuing..."
  else
    echo "creating code directory..."
    mkdir code
fi

for file in *
  do
    if [ -e $file/.git ]; then
      echo "$file is a local git repo. Moving to ~/code..."
      mv $file ~/code/$file
    else
      echo "$file is not a local git repo"
    fi
  done
