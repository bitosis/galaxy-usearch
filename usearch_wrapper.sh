#!/bin/bash

# Print the command
echo "$*"

# Direct stderr to stdout and save output
OUTPUT=`$* 2>&1`

# Direct stdout to stderr on failure
if [ $? -ne 0 ]
then
    echo "$OUTPUT" 1>&2
    exit
fi

# Print output
echo $OUTPUT
