#!/bin/bash

jmeter_file=$1

#        <stringProp name="ThreadGroup.num_threads">500</stringProp>
#        <stringProp name="ThreadGroup.ramp_time">60</stringProp>
#        <longProp name="ThreadGroup.start_time">1484119421000</longProp>
#        <longProp name="ThreadGroup.end_time">1484119421000</longProp>
#        <boolProp name="ThreadGroup.scheduler">true</boolProp>
#        <stringProp name="ThreadGroup.duration">1200</stringProp>
#            <name>throughput</name>
#            <value>6500.0</value>

egrep "ThreadGroupGui|ThreadGroup.num_threads|ThreadGroup.ramp_time|ThreadGroup.duration|filename" ${jmeter_file} |grep -v '><'
grep -A1 "throughput" ${jmeter_file}
