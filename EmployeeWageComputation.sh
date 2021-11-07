#!/bin/bash -x

EmpRatePerHour=20;
NumOfWorkingDays=30
FullDayHour=8
HalfDayHour=4;
totalSalary=0;
isFullTime=1;

randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isFullTime ]
then
   totalSalary=$(($EmpRatePerHour*$FullDayHour))
   echo $totalSalary
else
   totalSalary=$(($EmpRatePerHour*$HalfDayHour))
   echo $totalSalary
fi


