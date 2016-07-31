#!/bin/bash

tmp_file='/tmp/sql_workers'

rm -f $tmp_file

psql -t -d flap -c "update task.works set status=0 where status=1"

