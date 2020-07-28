#!/bin/bash

exeDir=$(dirname $(readlink -f $0))
python3 $exeDir/run_sensitivity.py $(cat $1 | grep -v \#)  $(echo $@ | awk {'$1 = ""; print $0'})
