printf "Welcome to Employee Wage Computation Program. \n\n"

isFullTime=1;
isPartTime=2;
empRatePerHr=20;
randomCheck=$((1 + RANDOM % 3));

if [ $isFullTime -eq $randomCheck ]; then
  empHrs=8;
elif [ $isPartTime -eq $randomCheck ]; then
  empHrs=4;  
else
  empHrs=0;
fi

salary=$((empRatePerHr * empHrs));
