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
read -p "Enter your name: " USERNAME
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
if [ "$USERNAME" == "Greg" ];
then 
 ECHO "Hey... My name is Greg"
 ECHO "Hello $USERNAME, nice to meet you!"
 elif [ "$USERNAME" == "Dave" ]
 then 
 ECHO "Hey.."
 ECHO "I know a Guy Name Dave.."
 Echo "Are you Dave Thomas?"
else  
    ECHO "Hello $USERNAME, nice to meet you!"
fi


# COMPARISONS
NUM1 = 3
NUM2 = 5
if [ "$NUM1" -gt "$NUM2" ]
then 