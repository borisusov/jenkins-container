#!/bin/bash
set -x

#Script designed for start Project Jenkins-Container

echo Please select:
echo up - for start Project
echo down - for down Project and clean-up after Project activity

CHOICE=$1
HOST=$2

#TODO: Check HOST parameter for correct IP
case "$CHOICE" in
	
 	up) docker-compose -H "$HOST" up -d
               echo
               echo "    Hello from Jenkins"
               echo "   I m working correctly"
               echo 
               echo "Number of used arguments:" $#
               echo 
	  ;;
	down)  docker-compose -H "$HOST" down
               echo
               echo "    Good Bye from Jenkins!"
          ;;
        *)	echo
		echo "$CHOICE is not valid input"
	        echo "Please try again"
                docker-compose -H "$HOST" ps
esac

exit $?

