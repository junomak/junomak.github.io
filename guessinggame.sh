#!/usr/bin/env bash

filelist=($(ls -p | grep -v /))
answer=${#filelist[@]}
guess=$(($answer+1))

function checkans {
    if [[ $1 -lt $2 ]]
    then
    echo "Your guess is too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "Your guess is too high"
    fi
}

while [ $answer -ne $guess ]
do
    echo "Please input your guess."
    read guess
    echo $(checkans $guess $answer)
done

echo "You guess correctly. Congratulations!"