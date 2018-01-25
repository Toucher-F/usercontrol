#!/bin/bash
source /usercontrol/environment.sh
source /usercontrol/function.sh

while :

do
    read -p "Please choose your action number or enter quit to exit:
    1.Create user
    2.Delete user
    " ACTION
    if [ -z ${ACTION} ];then
	    echo "The case type cannot be null"
    fi

    case $ACTION in
    "1")
        create-user
    ;;
    "2")
        delete-user
    ;;
	"quit")
        break
    ;;
    "*")
        echo "Invalid input"
    ;;
    esac

done
       echo "------------usercontrol.sh end------------"