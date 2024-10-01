#!/bin/bash

count=0
trap ' echo
    echo "Try count:$count"
    exit' INT

while :
do
    curl -o /dev/null $1
    count=$(expr $count + 1)
    sleep 1
done

# 파일 실행시
# bash 003(1001)_trap_while_when_ctrl+c.sh 원하는 웹사이트주소