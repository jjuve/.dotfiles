#!/usr/bin/env bash

directory="/Users/jj/app"

function iterate(){
	local dir="$1"

	for x in "$dir"/*; do
		if [[ -f "$x" ]]; then
			echo "$x"
		fi
		if [[ -d "$x" ]]; then
			echo "$x"
			iterate "$x"
		fi
	done
}

iterate "$directory"