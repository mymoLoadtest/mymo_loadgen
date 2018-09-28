#!/bin/bash


test_script_path=/data/loadgen_encrypt_20180927
test_script_out=${test_script_path}/log

#loadTestVIP_encrypt_accountInquiry_re01.jmx     loadTestVIP_encrypt_getWidget_re01.jmx  loadTestVIP_encrypt_queryMsg_re01.jmx   loadTestVIP_encrypt_transferableAcc_re01.jmx
#loadTestVIP_encrypt_digitalPSCInquiry_re01.jmx  loadTestVIP_encrypt_post_re01.jmx       loadTestVIP_encrypt_queryUser_re01.jmx


${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_queryUser_re01.jmx ${test_script_out}/loadTestVIP_encrypt_queryUser_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_getWidget_re01.jmx ${test_script_out}/loadTestVIP_encrypt_getWidget_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_accountInquiry_re01.jmx ${test_script_out}/loadTestVIP_encrypt_accountInquiry_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_transferableAcc_re01.jmx ${test_script_out}/loadTestVIP_encrypt_transferableAcc_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_post_re01.jmx ${test_script_out}/loadTestVIP_encrypt_post_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_digitalPSCInquiry_re01.jmx ${test_script_out}/loadTestVIP_encrypt_digitalPSCInquiry_re01.jmx 1000
${test_script_path}/run_jmeter.sh ${test_script_path}/loadTestVIP_encrypt_queryMsg_re01.jmx ${test_script_out}/loadTestVIP_encrypt_queryMsg_re01.jmx 2000
