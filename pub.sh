#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <topic_name> <msg_type> <msg>"
    exit 1
fi

topic_name=$1
msg_type=$2
msg=$3

rostopic pub "$topic_name" "$msg_type" "$msg"
