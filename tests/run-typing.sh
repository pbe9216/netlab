#!/bin/bash
DIRNAME=`dirname $0`
echo "Executing typing tests in $DIRNAME"
cd $DIRNAME
cd ..; python3 -m mypy --no-incremental -p netsim
for file in netsim/extra/*/plugin.py; do
  python3 -m mypy $file
done
