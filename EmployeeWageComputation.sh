#!/bin/bash -x

EmpRatePerHour=20;
NumOfWorkingDays=30;
FullDayHour=8;
PartTimeHour=8;
SalaryPerDay=0;
isFullTime=1;
isPartTime=0;

randomCheck=$((RANDOM%2))

case $randomCheck in
		$isFullTime)
		empHrs=8
		;;
		*)
		$isPartTime
		empHrs=8
		;;
esac
	SalaryPerDay=$(($EmpRatePerHour*$empHrs))
   echo
