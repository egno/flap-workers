#!/bin/bash

tmp_file='/tmp/sql_workers'
max_workers=2


numwork=0`cat $tmp_file`
numwork=$((numwork+1))

if [ $numwork -gt $max_workers ]
	then
	echo "workers limit $numwork of $max_workers"
	exit 1
fi

echo "worker $numwork of $max_workers"

echo "$numwork" > $tmp_file

while :
do
	uid=`psql -t -d flap -c 'select task.check_works()' | sed 's/ //g'`
	
#	echo $uid

	if [ "$uid" = "" ]
	then
	  break  
	fi
	psql -t -d flap -c "update task.works set status=task.process_work(id) where id='$uid'"

done

numwork=$((numwork-1))
echo "$numwork" > $tmp_file