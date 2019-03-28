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
        "MASTER") /dts/raw-transformation-service/start.sh
                  echo "I am master" > /dts/master.txt
                  nohup java -jar /dts/raw-transformation-service/demo-0.0.1-SNAPSHOT.jar >& /dts/raw-transformation-servicet.log &
                  exit 0
                  ;;
        "BACKUP") /dts/raw-transformation-service/stop.sh
                  kill -9 java
                  exit 0
                  ;;
        "FAULT")  /dts/raw-transformation-service/stop.sh
                  exit 0
                  ;;
        *)        /dts/raw-transformation-service/stop.sh
                  exit 1
                  ;;
esac
