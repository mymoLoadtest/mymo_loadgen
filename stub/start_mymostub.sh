#!/bin/bash


work_path=/data/stub
log_path=/data/stub/log
#nohup java -jar stubby4j-5.0.2.jar -d ${work_path}/mymo-stub-getWidget.yaml -t 10078 -a 10079 -s 10080 -l 10.211.101.18 > ${log_path}/getWidget-`date +%Y%m%d-%H%M`.out 2>&1 &
nohup java -jar stubby4j-5.0.2.jar -d ${work_path}/mymo-stub-cbs.yaml -t 10078 -a 10079 -s 10080 -l 10.211.101.18 > ${log_path}/cbsstub-`date +%Y%m%d-%H%M`.out 2>&1 &
nohup java -jar stubby4j-5.0.2.jar -d ${work_path}/mymo-stub-activatePush.yaml -t 20078 -a 20079 -s 20080 -l 10.211.101.18 > ${log_path}/activatePush-`date +%Y%m%d-%H%M`.out 2>&1 &
