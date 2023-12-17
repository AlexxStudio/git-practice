
check_1()  {
	if [[ ! -f "$1" ]]; then
		echo "File not found"
		exit 1
	fi
	file_ext1="${1##*.}"
	
	if [[ "$file_ext1" != "txt" ]]; then
		echo "Wrong file format. You must use txt format only"
		exit 1
	fi
	
	echo "File format is ok"
	exit 0
}

for file in "$@"; do
	check_1 "$file" 
done
