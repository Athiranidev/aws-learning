#!/bin/bash

echo "Enter filename:"
read file

if [ -f "$file" ]
then
    echo "File exists"
else
    echo "File not found"
fi
