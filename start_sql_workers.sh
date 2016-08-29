#!/bin/bash


db=$1
max_workers=2

if [[ "$db" == "" ]]
then
    echo dbname is required
    exit 1
fi

if [[ "$max_workers" == "" ]]
then
    echo max_workers required
    exit 1
fi

me=`echo $BASH_SOURCE | sed 's/.*\/\([^/]*\)$/\1/'`

pids=`ps a -o pid,ppid,command | grep $me | grep " $db" | grep -v grep | grep -v $$| sed 's/^[ ]*\([0-9]*\)\ .*$/\1/' | wc -l`

if [[ $pids -ge $max_workers ]]
then
    echo $pids processes is already running
    exit 1
fi

echo Start process $pids : [$$] $me $db

trap 'echo "Exit"; exit 1' 2

while [ 1 = 1 ]
do
sleep 1
./proc_sql.sh $db $max_workers
done
