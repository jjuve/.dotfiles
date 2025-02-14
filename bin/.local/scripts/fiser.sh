#!/usr/bin/env bash

DIRECTORY="/Users/jj/app"

function iterate(){
	local dir="$1"

	for x in "$dir"/*; do
		if [[ -f "$x" ]]; then
			case $x in
				 *.png )
				echo "Copying $x"
				cp $x /Users/jj/tmp/png
				;;
				*)
				;;
			esac
		elif [[ -d "$x" ]]; then
			echo "$x"
			iterate "$x"
		fi
	done
}

if [[ -d /Users/jj/tmp ]]; then
	echo "Directory found"
	iterate "$DIRECTORY"
elif [[ false ]]; then
	echo "Directory not found, making directories"
	directories=("/Users/jj/tmp/pdf" "/Users/jj/tmp/jpeg")

	for directory in "${directories[@]}";do
	mkdir -v -p "$directory"
	done

	iterate "$DIRECTORY"
fi

echo "==================== Script Done ===================="
