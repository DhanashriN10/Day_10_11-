#flip coin  simulator
cnt_h=0
cnt_t=0
while(( $cnt_h!=21 && $cnt_t!=21 ))
do
 coin=$((RANDOM%2))
 if (($coin==0))
 then
     echo "This is head"
     ((cnt_h++))  
 elif(($coin==1))
 then
     echo "This is tail"
     ((cnt_t++))
  fi
done
echo "Number of head:" $cnt_h
echo "Number of tail:" $cnt_t
if(($cnt_t==21))
then
   echo "Tail win by:" $(($cnt_t-$cnt_h))
elif(( $cnt_h==21))
then
    echo "Head win by:" $(($cnt_h-$cnt_t))
elif(($cnt_h==21 && $cnt_t==21))
then
    echo "Match Tie"
    while(( $(($cnt_t-$cnt_h))==2 || $(($cnt_h-$cnt_t))==2))
    do
    coin=$((RANDOM%2))
       if(($coin==0))
       then
            echo "This is head"
            ((cnt_h++))
       elif(($coin==1))
       then
            echo "This is tail"
            ((cnt_t++))
      fi
     done
 fi
