#!/bin/bash

docker pull mysql:8 || exit 1

i=0
time dgoss run -e MYSQL_ROOT_PASSWORD=testPass mysql:8 || ((i++))

exit $i
