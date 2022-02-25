echo "Flip the coin"

head_count=0
tail_count=0
for((i=1; i<=10; i++))
do
   random_num=$(( RANDOM%2 ))

   if (( $random_num == 1 ))
   then
       singlet[$i]="Head"
       (( head_count++ ))
   elif(( $random_num == 0 ))
   then
       singlet[$i]="Tail"
       (( tail_count++ ))
   else
        exit
   fi
done

#storing values in dictionary and finding persentage of head and tail

echo ${singlet[@]}

head_persent=$(( $(($head_count / $i)) * 100 | bc ))
tail_persent=$(( $(($tail_count / $i)) * 100 | bc ))
echo "Head count:" $head_count
echo "Tail count:" $tail_count
echo "Head persentage in singlet combination:" $head_persent
echo "Tail persentage in singlet combination:" $tail_persent

#Store the doublet combination and finding persentage 

HH=o
TT=0
HT=0
TH=0
for((i=0; i<10; i++))
do
  coin_1=$(( RANDOM%2 ))
  coin_2=$(( RANDOM%2 ))
  
  if(($coin_1==1 && $coin_2==1))
  then
      dublet[$i]="(head-head)"
      (( HH++ ))
  elif(($coin_1==0 && $coin_2==0))
  then
      dublet[$i]="(Tail-Tail)"
      (( TT++ ))
  elif(($coin_1==1 && $coin_2==0))
  then
      dublet[$i]="(Head-Tail)"
      (( HT++ ))
  elif(($coin_1==0 && $coin_2==1))
  then
      dublet[$i]="(Tail-Head)"
      (( TH++ ))
  else
      exit
  fi
done

echo ${dublet[@]}

head_head_persent=$(( $(($HH / $i)) * 100 | bc ))
tail_tail_persent=$(( $(($TT / $i)) * 100 | bc ))
head_tail_persent=$(( $(($HT / $i)) * 100 | bc ))
tail_head_persent=$(( $(($TH / $i)) * 100 | bc ))

echo "Head-Head count:" $HH
echo "Tail-Tail count:" $TT
echo "Head-Tail count:" $HT
echo "Tail-Head count:" $TH
echo "Persentage of Head_Head is:" $head_head_persent
echo "Persentage of Tail_Tail is:" $tail_tail_persent
echo "Persentage of Head_Tail is:" $head_tail_persent
echo "Persentage of Tail_Head is:" $tail_head_persent

#Store the triplet combination and finding persentage

HHH=0
TTT=0
HTH=0
THT=0
HTT=0
THH=0
HHT=0
TTH=0

for((i=0;i<10;i++))
do
   coin_1=$((RANDOM%2))
   coin_2=$((RANDOM%2))
   coin_3=$((RANDOM%2))
	
   if(($coin_1==1 && $coin_2==1 && $coin_3==1))
   then
	triplet[$i]="(Head-Head-Head)"
	(( HHH++ ))
   elif(($coin_1==0 && $coin_2==0 && $coin_3==0))
   then
        triplet[$i]="(Tail-Tail-Tail)"
        (( TTT++ ))
   elif(($coin_1==1 && $coin_2==0 && $coin_3==1))
   then
        triplet[$i]="(Head-Tail-Head)"
        (( HTH++ ))
   elif(($coin_1==1 && $coin_2==1 && $coin_3==0))
   then
       triplet[$i]="(Head-Head-Tail)"
       (( HHT++ ))
   elif(($coin_1==1 && $coin_2==0 && $coin_3==0))
   then
        triplet[$i]="(Head-Tail-Tail)"
        (( HTT++ ))
   elif(($coin_1==0 && $coin_2==1 && $coin_3==0))
   then
       triplet[$i]="(Tail-Head-Tail)"
       (( THT++ ))
   elif(($coin_1==0 && $coin_2==0 && $coin_3==1))
   then
        triplet[$i]="(Tail-Tail-Head)"
        (( TTH++ ))
   elif(($coin_1==0 && $coin_2==1 && $coin_3==1))
   then
       triplet[$i]="(Tail-Head-Head)"  
       (( THH++ ))
   else
       exit
   fi
done

echo ${triplet[@]}

head_head_head_persent=$(( $(($HHH / $i)) * 100 | bc ))
tail_tail_tail_persent=$(( $(($TTT / $i)) * 100 | bc ))
head_tail_head_persent=$(( $(($HTH / $i)) * 100 | bc ))
tail_head_tail_persent=$(( $(($THT / $i)) * 100 | bc ))
head_head_tail_persent=$(( $(($HHT / $i)) * 100 | bc ))
tail_tail_head_persent=$(( $(($TTH / $i)) * 100 | bc ))
head_tail_tail_persent=$(( $(($HTT / $i)) * 100 | bc ))
tail_head_head_persent=$(( $(($THH / $i)) * 100 | bc ))

echo "Head-Head-Head count:" $HHH
echo "Tail-Tail-Tail count:" $TTT
echo "Head-Tail-Head count:" $HTH
echo "Tail-Head-Tail count:" $THT
echo "Head-Head-Tail count:" $HHT
echo "Tail-Tail-Head count:" $TTH
echo "Head-Tail-Tail count:" $HTT
echo "Tail-Head-Head count:" $THH
echo "Persentage of Head_Head_Head is:" $head_head_head_persent
echo "Persentage of Tail_Tail_Tail is:" $tail_tail_tail_persent
echo "Persentage of Head_Tail_Head is:" $head_tail_head_persent
echo "Persentage of Tail_Head_Tail is:" $tail_head_tail_persent
echo "Persentage of Head_Head_Tail is:" $head_head_tail_persent
echo "Persentage of Tail_Tail_Head is:" $tail_tail_head_persent
echo "Persentage of Head_Tail_Tail is:" $head_tail_tail_persent
echo "Persentage of Tail_Head_Head is:" $tail_head_head_persent
