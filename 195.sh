# Given a text file file.txt, print just the 10th line of the file.

# Example:

# Assume that file.txt has the following content:

# Line 1
# Line 2
# Line 3
# Line 4
# Line 5
# Line 6
# Line 7
# Line 8
# Line 9
# Line 10

# Your script should output the tenth line, which is:

# Line 10
# Note:
# 1. If the file contains less than 10 lines, what should you output?
# 2. There's at least three different solutions. Try to explore all possibilities.

LINE=1

while IFS='\n' read -r line
do
    if [ $LINE == 10 ]
    then
        echo "$line"
    fi
    ((LINE++))     
done <"./file.txt"

# IFS=$'\n' - MEANING
# IFS stands for "internal field separator". It is used by the shell to determine how to do word splitting, 
# i.e. how to recognize word boundaries.
