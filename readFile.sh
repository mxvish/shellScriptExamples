file=list.txt

while read -r line;do
	brew remove $line
done < "$file"
