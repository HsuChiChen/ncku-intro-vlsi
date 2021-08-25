#!/bin/bash
labname="Lab6"
include_files="define.vh"
source_files="system.v Conv.v Sat_adder.v Pooling.v Controller.v Pad.v"

root_dir=$(pwd)
student=$(grep -v '^$$' StudentID)

#Set Color
BLUE='\e[0;34m';
RED='\e[0;31m';
NORMAL='\e[0m';

#Set studentID
#echo -e "${BLUE}studentID is ${student} ${NORMAL}"

#Check main folder name
if [ $(basename $(pwd)) != ${labname}_${student} ]; then
	echo -e "${RED}Main folder name should be \"${labname}_${student}\"${NORMAL}"
	exit 1
else
	echo -e "${BLUE}Main folder name pass"${NORMAL}
fi

#Check doc
if [ -f  ${student}.doc* ]; then
	echo -e "${BLUE}Report file check pass ${NORMAL}"
else
	echo -e "${RED}Report file is not found ${NORMAL}"
	exit 1
fi

#Check include
Include_error=0
if [ -d include ]; then
	cd include
else
	echo -e "${RED}include is not found ${NORMAL}"
	exit 1
fi

for i in ${include_files}
do
	if [ -f ${i} ]; then
		true
	else
		echo -e "${RED}${i} is not found ${NORMAL}"
		Include_error=$[$Include_error+1]
		exit 1
	fi
done

if [ $Include_error -eq 0 ]; then
	echo -e "${BLUE}Include PASS${NORMAL}"
	cd ..
fi

#Check source
Source_error=0
if [ -d src ]; then
	cd src
else
	echo -e "${RED}source is not found ${NORMAL}"
	exit 1
fi

for i in ${source_files}
do
	if [ -f ${i} ]; then
		true
	else
		echo -e "${RED}${i} is not found ${NORMAL}"
		Include_error=$[$Source_error+1]
		exit 1
	fi
done

if [ $Source_error -eq 0 ]; then
	echo -e "${BLUE}Source PASS${NORMAL}"
	cd ..
fi

#ALL Check
#if [ $ProbA_error -eq 0 ] && [ $ProbB_error -eq 0 ] && [ $ProbC_error -eq 0 ]; then
if [ $Include_error -eq 0 ]; then
	echo -e "${BLUE}Congratulation!! ALL files check pass!! ${NORMAL}"
fi

