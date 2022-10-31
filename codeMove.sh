#!/bin/bash

if [ -d /home/mivancic/code ]; then
  echo "code directory already exists, continuing..."
  else
    echo "creating code directory..."
    mkdir /home/mivancic/code
fi
cd ~
for file in *
  do
    if [ -e $file/.git ]; then
      echo "$file is a local git reo. Moving to ~/code..."
      mv $file ~/code/$file
    else
      echo "$file is not a local git repo"
    fi
  done
