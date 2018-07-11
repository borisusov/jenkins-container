#!/bin/bash

#Script designed for start Project Jenkins-Container

echo Please select:
echo start - for start Project
echo down - for down Project and clean-up after Project activity

choice=$1



if [ "$choice" == start ] ; then
	docker-compose up --build -d
echo
echo Hello from Jenkins
echo I m working normally
elif [ "$choice" == down ] ; then
	docker-compose down
echo Good Bye from Jenkins

else 
	echo "$choice is not valid answer"
	echo "Please try again"
fi




#for down
#usov@usov-Lenovo-V570:~/solutions/jenkins-container$ docker-compose down

#for up
#usov@usov-Lenovo-V570:~/solutions/jenkins-container$ docker-compose up --build

#echo param_0  # skript name 
#echo 1_param_$1  #first  param
#echo 2_param_$2  # second param
#echo 3_param_$3  # third param
#echo all_param_@ all params
