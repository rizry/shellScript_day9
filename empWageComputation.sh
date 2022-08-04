printf "Welcome to Employee Wage Computation Program. \n\n"

function getEmpWage(){
  isFullTime=1;
  isPartTime=2;
  empRatePerHr=20;

  daysToWork=20;
  hrsToWork=100
  empWorkHrs=0;

  dailyWageArr=()
  daysArr=()

  while [ $daysToWork -gt 0 -a $empWorkHrs -lt $hrsToWork ]; do
    
    randomCheck=$((1+RANDOM%3));
    case "$randomCheck" in
      
      $isFullTime)
        ((empWorkHrs+=8));
        ((daysToWork--));
        daysArr+=( $(( 20 - $daysToWork )) )
        dailyWageArr+=( $(( $empRatePerHr * 8 )) );;
      
      $isPartTime)
        ((empWorkHrs+=4));

        ((daysToWork--));
        daysArr+=( $(( 20 - $daysToWork )) )
        dailyWageArr+=( $(( $empRatePerHr * 4 )) );;
      
      *)
        ((empWorkHrs+=0));
    esac

  done
   
  monthlySalary=$((empRatePerHr * empWorkHrs));

  echo "${dailyWageArr[*]}" 
  echo "${daysArr[*]}" 
  echo "$monthlySalary"  


}

{ read -r dailyWageArr 
  read -r daysArr
  read -r totalWage
} <<< $(getEmpWage)

