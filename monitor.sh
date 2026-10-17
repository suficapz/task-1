#!/bin/bash
########################################
########################################
##Author : sufiyan
##Date:16/10/2026
##Version:v1


echo "--------------------------"
echo " SYSTEM MONITORING REPORT "
echo "--------------------------"
echo "Date: $(date)"

echo '---------------------------------'
echo 'Running Services in the AWS instance'
echo '-----------------------------------'
sudo systemctl list-units --type=service --state=running


echo '-----------------CPU------------------'
top -bn1 | head -n 5
echo '--------------------------------------'

echo '----------------Memory----------------'
free -g
echo '--------------------------------------'

echo '--------------Disk Space--------------'
df -h
echo '-----------------'
