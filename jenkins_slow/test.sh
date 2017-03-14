#!/bin/bash

docker pull jenkins:alpine || exit 1

i=0
time dgoss run jenkins:alpine || ((i++))
time dgoss run -e JENKINS_OPTS="--httpPort=8080 --httpsPort=-1" -e JAVA_OPTS="-Xmx1048m" jenkins:alpine || ((i++))

exit $i
