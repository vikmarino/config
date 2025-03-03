#!/bin/bash
#exit 1
PROCESS="Oko.app"
number=$(ps aux | grep -v grep | grep -ci $PROCESS)

# debugging this is working
date >> /tmp/MyLaunchdTest.out

if [ $number -gt 0 ]
    then
        echo "$PROCESS Running";
else 
	echo "$PROCESS not running. Starting now..";
	output=$(open /Applications/Oko.app) # don't use -j, it will prevent oko launch full screen and work!!
	if [ $? -eq 0 ]
	then
	  echo "Success"
	  exit 0
	else
	  echo "Failure" >&2
	  exit 1
	fi
fi
