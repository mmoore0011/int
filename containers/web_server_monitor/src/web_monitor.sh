#!/bin/sh
while :; do
	echo; echo; date
	echo "Testing the Simple Web Server..."
	if nc -w 1 localhost 8000; then
		echo "The Simple Web Server is accepting connections"
	else
		echo "Something is wrong with the Simple Web Server"
	fi
	sleep 40
done
