#!/bin/bash

docker pull instavote/vote || exit 1

i=0
time dgoss run -e OPTION_A=foo -e OPTION_B=bar instavote/vote || ((i++))
time dgoss run instavote/vote || ((i++))

exit $i
