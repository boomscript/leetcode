LINE=1

while IFS='\n' read -r line
do
    if [ $LINE == 10 ]
    then
        echo "$line"
    fi
    ((LINE++))     

done <"./file.txt"
