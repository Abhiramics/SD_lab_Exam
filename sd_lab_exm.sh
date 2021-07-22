a=(1 2 3 45 4)
echo ${a[@]}     
b=(5 33 6)
echo ${b[@]}
c=("${a[@]}" "${b[@]}")
echo ${c[@]}
n=${#c[@]}
echo $n
for ((i=0; i<$n; i++))
do
    for((j=i+1; j<$n; j++))
    do
        if [ ${c[i]} -le ${c[j]} ]
        then
            continue
        else
            sort=${c[i]}
            c[i]=${c[j]}
            c[j]=$sort
        fi
    done
done
echo ${c[@]}
if (( $n % 2 == 1 )); then   
    val="${c[ $(($n+1/2)) ]}"
  else                          
    (( j=n/2 ))
    (( k=j+1 ))
    (( val=(${c[j]} + ${c[k]})/2 ))
  fi
  echo $val