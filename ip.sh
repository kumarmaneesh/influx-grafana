docker inspect -f '{{.Name}}-{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq) | grep slave > test.txt

arr=()
input="test.txt"
while IFS= read -r line
do
  #s = "$line"
  A="$(cut -d'-' -f3 <<<"$line")"
  #echo "$A"
  arr+="$A,"
done < "$input"
echo ${arr[@]}
