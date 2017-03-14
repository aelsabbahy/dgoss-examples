#!/bin/bash

docker build -t dockerfile_example .

i=0
time dgoss run dockerfile_example || ((i++))
time dgoss run -e DEBUG=true dockerfile_example || ((i++))

exit $i
