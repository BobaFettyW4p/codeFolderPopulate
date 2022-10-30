#!/bin/bash
test -f $HOME/code
result=$?
#checks for code directory; creates if not present
if [ $result ]; then
    echo "code directoy exists; moving on"
else
    mkdir $HOME/code
fi
#loops over every file in the home directory; moves any with .git folder within it to the code folder

for file in $HOME/*;
    do
        echo "Processing $file"
        test -f $file/.git
        test=$?
        if [ $test ]; then
                "Local repo found, moving to code..."
                mv $file $HOME/code
        else
            echo "non-git repo, moving on"
        fi
            
    done