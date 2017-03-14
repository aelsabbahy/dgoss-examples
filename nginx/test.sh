#!/bin/bash

docker pull nginx:1.11.10 || exit 1

i=0
time dgoss run nginx:1.11.10 || ((i++))

exit $i
