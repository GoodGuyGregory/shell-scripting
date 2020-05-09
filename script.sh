#! /bin/bash

# Comments 
# ECHO COMMAND
echo Hello World!

# VARIABLES
# uppercase by convention
#  Letters, numbers underscores
# NAME="Greg"
# echo "My Name is $NAME"
# echo "My Name is still ${NAME}"

# USER INPUT
# read -p "Enter your name: " USERNAME
# echo "Hello $USERNAME, nice to meet you!"

#  CONDITIONALS:

# SIMPLE IF STATEMENT
# if [ "$USERNAME" == "Greg" ];
# then 
#  ECHO "Hey... My name is Greg"
# fi

# IF ELSE STATEMENT
# if [ "$USERNAME" == "Greg" ];
# then 
#  ECHO "Hey... My name is Greg"
#  ECHO "Hello $USERNAME, nice to meet you!"
# else 
#     ECHO "Hello $USERNAME, nice to meet you!"
# fi

#  ELSE IF (elif)
# if [ "$USERNAME" == "Greg" ];
# then 
#  ECHO "Hey... My name is Greg"
#  ECHO "Hello $USERNAME, nice to meet you!"
#  elif [ "$USERNAME" == "Dave" ]
#  then 
#  ECHO "Hey.."
#  ECHO "I know a Guy Name Dave.."
#  Echo "Are you Dave Thomas?"
# else  
#     ECHO "Hello $USERNAME, nice to meet you!"
# fi


# COMPARISONS
# NUM1=31
# NUM2=5
# # -gt is Greater than
# if [ "$NUM1" -gt "$NUM2" ]
# then
#  echo "$NUM1 is greater than $NUM2"
#  else 
#   echo "$NUM1 is less than $NUM2"
# fi

######
# ADDITIONAL CONDITIONALS:

# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
#####

#  FILE CONDITIONS

FILE="test.txt"
if [ -f  "$FILE" ]
then
 echo "$FILE is a file"
else
 echo "$FILE is not a file"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# CASE STATEMENTS
# stores the variable in ANSWER
# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in 
#     [yY] | [yY][eE][sS])
#     echo "You're able to drink"
#     ;;
#     [nN] | [nN][oO])
#     echo "Sorry no can do bubs"
#     ;;
# *)
# # if they dont put anything
#     echo "Please enter y/yes or n/no"
#     ;;
# esac

# LOOPS:

# SIMPLE FOR LOOP
NAMES="Jake Xiao Ryan Tyler"
for NAME in $NAMES
    do 
        echo "Hello $NAME"
    done

#  FOR LOOP to rename files

# #  Loop that will rename the files names 
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         # uses bash renaming command
#         mv $FILE $NEW-$FILE
# done

#  WHILE LOOP:

# Read through a file line by line
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
# reading from the file requires "<"
done < "./sampletext.txt"

# FUNCTIONS:

#  SIMPLE FUNCTION:
function sayHELLO() {
    echo "Hello from function"
}

# run function
sayHELLO

#  FUNCTION WITH PARAMS

# Use positional params 
function greet() {
    echo "hello, I am $1 and $2"
}

#  must provide params
greet "Greg" "26"

# CREATE FOLDER AND WRITE TO A FILE

mkdir hello
touch hello/world.txt
echo "hello world" >> "hello/world.txt"
echo "Created hello/world.txt"