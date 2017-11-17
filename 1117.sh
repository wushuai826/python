#!/bin/bash
#Author:wushuai
#9X9chengfabiao
for i in {1..3};do
    for j in {1..9};do
        echo  -n "$j * $i = $(($j*$i))"
	    if [ $j == $i ];then
                echo -e "\n"
		break
	    fi
    done
done
