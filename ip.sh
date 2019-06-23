#for i in {1..5}
#do
 #  echo "$i"
#done
arr=()
input="test.txt"
while IFS= read -r line
do
  #s = "$line"
  A="$(cut -d'-' -f2 <<<"$line")"
  #echo "$A"
  arr+="$A,"
done < "$input"
echo ${arr[@]}
