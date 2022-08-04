printf "Welcome to Employee Wage Computation Program. \n\n"

isFullTime=1;
isPartTime=2;
empRatePerHr=20;
randomCheck=$((1+RANDOM%3));

case "$randomCheck" in
  $isFullTime)
    empHrs=8;;
  $isPartTime)
    empHrs=4;;
  *)
    empHrs=0;;
esac

salary=$((empRatePerHr * empHrs));
