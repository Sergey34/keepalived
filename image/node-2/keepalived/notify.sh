#!/bin/bash

# for ANY state transition.
# "notify" script is called AFTER the
# notify_* script(s) and is executed
# with 3 arguments provided by keepalived
# (ie don't include parameters in the notify line).
# arguments
# $1 = "GROUP"|"INSTANCE"
# $2 = name of group or instance
# $3 = target state of transition
#     ("MASTER"|"BACKUP"|"FAULT")

TYPE=$1
NAME=$2
STATE=$3

case $STATE in
        "MASTER") echo "I am MASTER" > /dts/master.txt
                  nohup java -jar /dts/raw-transformation-service/demo-0.0.1-SNAPSHOT.jar >& /dts/raw-transformation-servicet.log &
                  exit 0
                  ;;
        "BACKUP") echo "I am BACKUP" > /dts/master.txt
                  kill java
                  exit 0
                  ;;
        "FAULT")  echo "I am FAULT" > /dts/master.txt
                  kill java
                  exit 0
                  ;;
        *)        /dts/raw-transformation-service/stop.sh
                  kill java
                  exit 1
                  ;;
esac
