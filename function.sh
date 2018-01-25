#!/bin/bash
#backup all of core 
function create-user
{
    read -p "Please input the environment[30prod/30qa]?" ENVIRONMENT
    if [ -z ${ENVIRONMENT} ];then
	    echo "The environment cannot be null"
	    return 1
    fi
    arr=(30prod 30qa)
    if
	    echo ${arr[@]} | grep -wq ${ENVIRONMENT}
    then
        echo "" >/dev/null
    else
        echo "invalid environment"
        return 1
    fi
    read -p "Please input username?" USERNAME
    if [ -z ${USERNAME} ];then
	    echo "The username cannot be null"
	    return 1
    fi

}


############################################################################################################################
#Output running state
function echo-status
	{
		echo "=====================$1 start $(date +%T)===================="
		#log-check-ha $HA1_IP "HA1" $REPORT
		$1 $2 $3 $4
		is=$?

		echo "=====================$1 end $(date +%T)===================="



	}
