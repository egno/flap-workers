#!/bin/bash

db=$1

if [[ "$db" == "" ]]
then
    echo DB name is required $db
    exit 1
fi

tmp_file='/tmp/sql_workers_'$1

while :
do
	uid=`psql -t -d flapmo -c 'select task.check_works()' | sed 's/ //g'`
	
#	echo $uid

	if [ "$uid" = "" ]
	then
	  break  
	fi
	psql -t -d flapmo -c "update task.works set status=task.process_work(id) where id='$uid'"

done

exit 0