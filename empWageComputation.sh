printf "Welcome to Employee Wage Computation Program. \n\n"

function getEmpWage(){
  isFullTime=1;
  isPartTime=2;
  empRatePerHr=20;

  daysToWork=20;
  hrsToWork=100
  empWorkHrs=0;

  dailyWageArr=()

  while [ $daysToWork -gt 0 -a $empWorkHrs -lt $hrsToWork ]; do
    
    randomCheck=$((1+RANDOM%3));
    case "$randomCheck" in
      $isFullTime)
        ((empWorkHrs+=8));
        ((daysToWork--));
        dailyWageArr+=( $(( $empRatePerHr * 8 )) );;
      $isPartTime)
        ((empWorkHrs+=4));
        ((daysToWork--));
        dailyWageArr+=( $(( $empRatePerHr * 4 )) );;
      *)
        ((empWorkHrs+=0));
        dailyWageArr+=(0);;
    esac

  done
   
  monthlySalary=$((empRatePerHr * empWorkHrs));

  echo "${dailyWageArr[*]}" 
  echo "$monthlySalary"  

}

{ read -r dailyWageArr 
  read -r totalWage
} <<< $(getEmpWage)

