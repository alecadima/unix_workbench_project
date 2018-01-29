#Regular expresison to accept only numbers
re='^[0-9]+$'

incorrect_answer=true
number_of_files=$(ls -1 | wc -l)

# Ask to the user and read his response
function makequestion {
    echo "Guess how many files are in the current directory :"
    read response
}

# Validate all possibilities of answer
function validatequestion {
if [[ $response =~ $re ]]
then
    if [[ $response -eq $number_of_files ]]
    then
        echo "Congrats! You win!"
        incorrect_answer=false
    elif [[ $response -gt $number_of_files ]]
    then
        echo "You tried too high !!!"
    else
        echo "You tried too low !!!"
    fi
else
   echo "Please type a number : "
fi
}

#Loop until the user give the correct answer
while $incorrect_answer
do

    makequestion
    validatequestion
done
exit 0