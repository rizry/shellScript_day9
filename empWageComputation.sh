printf "Welcome to Employee Wage Computation Program. \n\n"

isFullTime=1;
isPartTime=2;
empRatePerHr=20;

workingDays=20;
empHrs=0;
while [ $workingDays -gt 0 ]; do
  
  randomCheck=$((1+RANDOM%3));
  
  case "$randomCheck" in
    $isFullTime)
      ((empHrs+=8))
      ((workingDays--));;
    $isPartTime)
      ((empHrs+=4))
      ((workingDays--));;
    *)
      ((empHrs+=0));;
  esac

done

monthlySalary=$((empRatePerHr * empHrs));
