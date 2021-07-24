#! /usr/bin/bash
#About : This program is made for giving the secret information to secret agent in a group of people by entering their valid credentials.
                 # This peice of code takes some pre-inputs from the developer about the agent.
#The code starts here#

clear
echo " Enter your credentials correctly. "
read -p "Enter your name: " name

first_char=$( echo -n $name | cut -c 1 )
	if [ $first_char != n ]
	then 
	clear
		echo "Hello $name You are not the secret agent."
		exit 1
	fi
read -p "Enter your home town :" home
last=$( echo -n $home | wc -c )
last_char=$( echo -n $home | cut -c $last )
	if [ $last_char != i -a $last_char != I ]
	then
		clear
		echo " Hello $name you are not the secret agent."	
		exit 1
	fi
read -p "Enter you birth year: " dob
	if [ $dob -lt 2002 ]
	then 
		clear
		echo " Hello $name you are not the secret agent."
		exit 1
	fi
read -p "What is your dog name: " dog 
if [ $dog != doggy ]
then
clear 
echo " Hello $name you are not the secret agent."
exit 1
fi

clear
echo " A big welcome to our secret agent..........Go back to your home and take some rest and later on you will be provided with new official task."
echo " Till then enjoy the days"

#END#
