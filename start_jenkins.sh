#!/bin/bash

#Script designed for start Project Jenkins-Container

echo Please select:
echo start - for start Project
echo down - for down Project and clean-up after Project activity

choice=$1



case   "$choice" in
	
	"start")    docker-compose up --build -d

echo
echo "    Hello from Jenkins"
echo "   I m working correctly"
echo 
echo "Number of used arguments:" $#
echo 
		;;

	"down")    docker-compose down

echo
echo "    Good Bye from Jenkins!"
		;;

	*)	echo
		echo "$choice is not valid input"
	        echo "Please try again"



esac
exit 0






