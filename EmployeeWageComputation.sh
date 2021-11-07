#!/bin/bash -x

EmpRatePerHour=20;
NumOfWorkingDays=30;
FullDayHour=8;
PartTimeHour=8;
totalSalary=0;
isFullTime=1;
isPartTime=0;

randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isFullTime ]
then
   totalSalary=$(($EmpRatePerHour*$FullDayHour))
   echo "Full time wage = " $totalSalary
elif [ $randomCheck -eq $isPartTime ]
then
   totalSalary=$(($EmpRatePerHour*$PartTimeHour))
   echo "Part time wage = " $totalSalary
fi


