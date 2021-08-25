#!/bin/bash
labname="Lab2"
ProbA_files="encoder.v encoder_tb.v"
ProbB_files="FullAdder.v FullAdder_tb.v"
ProbC_files="ripple_adder.v ripple_adder_tb.v"

root_dir=$(pwd)
student=$(echo $(pwd) | cut -d "_" -f 2)

#Set Color
BLUE='\e[0;34m';
RED='\e[0;31m';
NORMAL='\e[0m';

#Set studentID
echo -e "${BLUE}studentID is ${student} ${NORMAL}"

#Check doc
if [ -f  ${student}.doc* ]; then
	echo -e "${BLUE}Report file check pass ${NORMAL}"
else
	echo -e "${RED}Report file is not found ${NORMAL}"
	exit 1
fi

#Check ProbA
ProbA_error=0
if [ -d ProbA ]; then
	cd ProbA
	rm -rf INCA*
else
	echo -e "${RED}ProbA is not found ${NORMAL}"
	exit 1
fi

for i in ${ProbA_files}
do
	if [ -f ${i} ]; then
		true
	else
		echo -e "${RED}${i} is not found ${NORMAL}"
		ProbA_error=$[$ProbA_error+1]
		exit 1
	fi
done

if [ $ProbA_error -eq 0 ]; then
	echo -e "${BLUE}ProA PASS${NORMAL}"
	cd ..
fi

#Check ProbB+
ProbB_error=0
if [ -d ProbB ]; then
	cd ProbB
	rm -rf INCA*
else
	echo -e "${RED}ProB is not found ${NORMAL}"
	exit 1
fi

for i in ${ProbB_files}
do
	if [ -f ${i} ]; then
		true
	else
		echo -e "${RED}${i} is not found ${NORMAL}"
		ProbB_error=$[$ProbB_error+1]
		exit 1
	fi
done

if [ $ProbB_error -eq 0 ]; then
	echo -e "${BLUE}ProB PASS${NORMAL}"
	cd ..
fi

#Check ProbC
ProbC_error=0
if [ -d ProbC ]; then
	cd ProbC
	rm -rf INCA*
else
	echo -e "${RED}ProbC is not found ${NORMAL}"
	exit 1
fi

for i in ${ProbC_files}
do
	if [ -f ${i} ]; then
		true
	else
		echo -e "${RED}${i} is not found ${NORMAL}"
		ProbC_error=$[$ProbC_error+1]
		exit 1
	fi
done

if [ $ProbC_error -eq 0 ]; then
	echo -e "${BLUE}ProbC PASS${NORMAL}"
	cd ..
fi

#ALL Check
if [ $ProbA_error -eq 0 ] && [ $ProbB_error -eq 0 ] && [ $ProbC_error -eq 0 ]; then
	echo -e "${BLUE}Congratulation!! ALL files check pass!! ${NORMAL}"
fi

