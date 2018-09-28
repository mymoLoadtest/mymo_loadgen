#!/bin/bash


test_script_path=/data/loadgen_encrypt_20180927
test_script_out=${test_script_path}/log

${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_queryMsg_re01.jmx ${test_script_out}/loadTestVIP_encrypt_queryMsg_re01.jmx 2000
