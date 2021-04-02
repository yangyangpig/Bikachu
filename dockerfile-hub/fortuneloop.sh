#!/bin/bash
trap "text" SIGINT
mkdir /var/htdocs
while:
do
	echo $(data) Writing fortune to /var/htdocs/index.html /usr/game/fortune > /var/htdocs/index.html
	sleep 10
done

