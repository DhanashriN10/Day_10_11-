echo "Welcome to Arithmetic Computation and Sorting"
read -p "Enter the first Values : " a
read -p "Enter the second value:" b
read -p "Enter the third value:" c
echo "$a $b $c"

declare -A Res
Res[Exp1]=$((a+b*c))
Res[Exp2]=$((a*b+c))
Res[Exp3]=$((c+a/b))
Res[Exp4]=$((a%b+c))
echo "${Res[@]}"

for (( counter=1; counter<=4; counter++ ))
do
  arrayResult[$counter]=${Res[Exp$counter]}
 done
echo "${Res[@]}"
 for (( counter2=1; counter2<4; counter2++ ))
 do

   for (( counter2=1; counter2<4; counter1++ ))
    do

   if [[ ${Res[$counter2]} -lt ${Res[$(($counter2+1))]} ]]
   then
       temp=${Res[$counter2]}
       Res[$counter2]=${Res[$((counter2+1))]}
       Res[$((counter2+1))]=$temp
    fi
  done
done

echo " ${!Res[@]} : ${Res[@]}" 

#Ascending order
for (( counter=1; counter1<=4; counter1++ ))
do
  
for (( counter2=1; counter2<4; counter2++ ))
do
   if [[ ${Res[$counter2] -lt ${Res}[$(($counter2+1))]} ]]
   then
       temp=${Res[$counter2]}
       Res[$counter2]=${Res[$((counter2+1))]}
       Res[$((counter2+1))]=$temp
    fi
  done
done

echo " ${!Res[@]} : ${Res[@]} "
