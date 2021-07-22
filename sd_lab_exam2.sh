cat number.txt | while read num
do if ['echo "${num} % 2" | bc '-eq 0]
then
	echo ${num}>> even.number.txt
else
	echo ${num}>> odd.number.txt
fi
done

