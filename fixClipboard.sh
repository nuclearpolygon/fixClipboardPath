#!/bin/bash
script_dir=$( dirname -- "${BASH_SOURCE[0]}")
source $script_dir/venv/bin/activate
python $script_dir/main.py
while [ 0 ]; do
	PID = $(pidof python "$script_dir/main.py")
	if !ps -p $PID > /dev/null; then
		python $script_dir/main.py
		echo "host: $HOSTNAME; worker restarted at $(date +%s)" >> $script_dir/worker.log
	fi
	sleep 2
done
