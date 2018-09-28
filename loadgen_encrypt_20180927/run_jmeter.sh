#!/bin/bash

dt=`date '+%Y%m%d-%H%M'`
jmeter_path=/data/apache-jmeter-3.3/bin
jmeter_script=$1
jmeter_log=${2}-${dt}
export jmeter_mem=${3}
#export HEAP="-Xms${jmeter_mem}m –Xmx${jmeter_mem}m"

nohup ${jmeter_path}/jmeter -n -t ${jmeter_script} -l ${jmeter_log}.jtl -j ${jmeter_log}.fulllog > ${jmeter_log}.log 2>&1 &
