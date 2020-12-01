#!/usr/bin/bash
Userdetails()
{
Userdetails()
{
read -p "enter your mobile number:" mobile
read -p "enter your Zip code:" Zip code
read -p "enter your aadhar number :" aadhar
read -p "enter your name:" name



#pattern
mobilePattern="^[[:digit:]]{2}[[:space:]][[:digit:]]{10}$"
Zippattern="^[0-9]{5}(?:-[0-9]{4})?$"
aadharpattern= "^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$"
namePattern="(^[[:upper:]][[:alpha:]]{2,14}$)"
case $ch in


#Mobile Number
flagMobile=1
function mobile(){
while(( $flagMobile != 0 ))
do
read -p "Enter Mobile Number " mobile
if [[ $mobile =~ $mobilePattern ]]
then
        echo "$ your mobile number is valid number"
        flagMobile=0
else
        echo "invalid number"
fi
done
}

#Zip code
flagZip=1
function Zip(){
while(( $flagZip != 0 ))
do
read -p "Enter Zip code " Zip
if [[ $Zip =~ $zipPattern ]]
then
        echo "$ your given number is valid number"
        flagZip=0
else
        echo "invalid number"
fi
done
}


#aadhar 


flagaadhar=1
function aadhar(){
while(( $flagaadhar != 0 ))
do
read -p "Enter aadhar Number " aadhar
if [[ $aadhar =~ $aadharPattern ]]
then
        echo "$ given number is valid number"
        flagaadhar=0
else
        echo "invalid number"
fi
done
}



#name

function name(){
while(( $flagname != 0 ))
do
read -p "Enter your name " name
if [[ $name =~ $namePattern ]]
then
	echo "$your given name is valid number"
	flagname=0
else
 
	echo"invalid name"
fi
done
}
