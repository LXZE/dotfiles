#!/usr/bin/env zsh

function replace {
	[ -f $2 ] && mv $2 "$2_bkup_$timestamp"
	cp $1 $2
}

files=(".zshrc" ".p10k.zsh" ".tmux.conf" ".slate" ".eslintrc")
timestamp=$(date +%s)
for file in $files; do
	replace $file "$HOME"/"$file"
done
