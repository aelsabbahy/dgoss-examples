#!/bin/bash

i=0
for x in */;do
  echo -e "\n\n======================="
  echo "testing $x"
  echo "======================="
  pushd $x > /dev/null
  ./test.sh || ((i++))
  popd > /dev/null
done

exit $i
