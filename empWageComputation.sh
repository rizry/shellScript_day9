printf "Welcome to Employee Wage Computation Program. \n\n"

isFullTime=1;
isPartTime=2;
empRatePerHr=20;

daysToWork=20;
hrsToWork=100
empHrs=0;
while [ $daysToWork -gt 0 -a $empHrs -lt $hrsToWork ]; do
  
  randomCheck=$((1+RANDOM%3));
  case "$randomCheck" in
    $isFullTime)
      ((empHrs+=8));
      ((daysToWork--));;
    $isPartTime)
      ((empHrs+=4));
      ((daysToWork--));;
    *)
      ((empHrs+=0));;
  esac

done

monthlySalary=$((empRatePerHr * empHrs));
