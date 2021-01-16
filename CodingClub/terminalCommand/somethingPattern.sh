#!/bin/bash -x
echo "Enter the word"
read word
pattern='[a-zA-Z]{3}'
pattern='^[0-9]*'
pattern='[0-9a-zA-Z]*$'
pattern='^([0-9]*[a-zA-Z]){3}[0-9a-zA-Z]*$'
if [[ $word =~ $pattern ]]
then
        echo found
else
        echo not
fi
