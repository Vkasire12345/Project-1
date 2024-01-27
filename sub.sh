#!/bin/bash

echo "Enter the topic name:"
read topic_name
echo "Enter the CSV file name:"
read file_name

rostopic echo "$topic_name" | tee "$file_name".csv
