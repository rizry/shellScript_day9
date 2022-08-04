printf "Welcome to Employee Wage Computation Program. \n\n"

function getWorkHrs(){
  isFullTime=1;
  isPartTime=2;
  empRatePerHr=20;

  daysToWork=20;
  hrsToWork=100
  empWorkHrs=0;
  while [ $daysToWork -gt 0 -a $empWorkHrs -lt $hrsToWork ]; do
    
    randomCheck=$((1+RANDOM%3));
    case "$randomCheck" in
      $isFullTime)
        ((empWorkHrs+=8));
        ((daysToWork--));;
      $isPartTime)
        ((empWorkHrs+=4));
        ((daysToWork--));;
      *)
        ((empWorkHrs+=0));;
    esac

  done

  monthlySalary=$((empRatePerHr * empWorkHrs));
  echo "$empWorkHrs"

}

work_hours=$(getWorkHrs)

