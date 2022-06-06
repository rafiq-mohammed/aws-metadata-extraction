#!/bin/sh
runtime=`date +%d-%m-%Y' '%H:%M:%S`

# store the meta-data into a variable
data=`curl http://169.254.169.254/latest/meta-data`

# create a json format file
echo "{"
for i in $data
do
echo $i:`curl -sL http://169.254.169.254/latest/meta-data/$i`
done
echo "}"
