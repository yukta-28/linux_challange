#!/bin/bash

# Printing text

echo "*********************************"
echo "       Printing text             "
echo "*********************************"

figlet -f slant WELCOME

# Printing text with command

echo "*********************************"
echo "   Printing text with command    "
echo "*********************************"

echo "Today's date is `date`"

#Printing env variables inside string 

echo "*********************************"
echo "Printing env variables inside string"
echo "*********************************"

echo "$SHELL is the shell for this machine"

 
#Mathematical Calculations  

echo "*********************************"
echo " Mathematical Calculations       "
echo "*********************************"

#Addition

echo "*******Addition*******"

read -p "Enter 1st number for addition: "  num1
read -p "Enter 2nd number for addition: "  num2

Sum=$(($num1+$num2))

echo "Sum of $num1 and $num2 is $Sum"

#Subtraction

echo "*******Subtraction*******"

read -p "Enter 1st number for Subtraction: "  num1
read -p "Enter 2nd number for Subtraction: "  num2

Diff=$(($num1-$num2))

echo "Difference of $num1 and $num2 is $Diff"


#Multiplication

echo "*******Multiplication*******"

read -p "Enter 1st number for Multiplcation: "  num1
read -p "Enter 2nd number for Multiplication: "  num2

Product=$(($num1*$num2))

echo "Product of $num1 and $num2 is $Product"


#Division
echo "*******Division*******"

read -p "Enter 1st number for division: " num1 
read -p "Enter 2nd number for division: "  num2

#Div=$((scale =2; $num1/$num2 | bc ))

Div=`echo "scale =2; $num1/$num2" | bc`

echo "Division of $num1 by $num2 is $Div"


#if-else statement

echo "*******************************"
echo "  if-else statement            "
echo "*******************************"


read -p "Enter company name: " CName

if [ [$CName == "Alienware"] ]; 
	#|| ["$CName" == "Asus"];
then echo "It's a esport brand"
else echo "It's not an esport brand"
fi

#test command

echo "*************************"
echo "  Using the test command "
echo "*************************"

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
test $num1 -lt $num2 && echo "$num1 is less than $num2" || echo "$num1 is greater than $num2" 

#if Statements

echo "************************"
echo " if statements          "
echo "************************"

#read -p "Enter 1st number " num1
#read -p "Enter 2nd number " num2

if [ $num1 -eq $num2 ] ;
then echo "equals"
elif [ $num1 -ne $num2 ] ;
then echo "not equal"
elif [ $num1 -gt $num2 ] ;
then echo "greater than"
elif [ $num1 -lt $num2 ] ;
then echo "less than" 
elif [ $num1 -le $num2 ] ;
then echo "less than or equall to" 

fi
