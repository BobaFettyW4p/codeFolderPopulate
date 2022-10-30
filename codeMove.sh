#!/bin/bash
codeDirectory = "$HOME/code"
if [ test -f "$HOME/code" ]
    echo "code directory already exists, moving on"
else
    mkdir $HOME/code
fi

for file in $HOME
    do
        echo "Processing $file"
        if test -f "file/.git"
            do
                "Local repo found, moving to code..."
                mv file ~/code
        else
            echo "non-git repo, moving on"
        fi
            
    done