#!/bin/bash -x

isFullTime=1;
isPartTime=2;
totalSalary=0;
empRatePerHrs=20;
maxWorkingDays=20;
maxWorkingHrs=100;
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxWorkingHrs && $totalWorkingDays -le $maxWorkingDays ]]
do
	((totalWorkingDays++))
	 randomCheck=$((RANDOM%3))
   case $randomCheck in
				$isFullTime)
						empHrs=8
						;;
				$isPartTime)
						empHrs=4
						;;
				*)
						empHrs=0
						;;
   esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs+$empRatePerHrs));
echo $totalSalary
