#!/bin/bash
backup=~/.gammledots
if [[ ! -d $backup ]]; then
   echo "boi"
   mkdir $backup
fi
crap="/"
boi=( $(ls) )
for i in ${boi[@]}; do 
    if [[ $i == "lsp.lua" ]]; then 
        location=$(head -n1 $i)
        location=$HOME${location:1}
    elif [ $i != setup.sh ]; then 
        location=$(head -n1 $i)
        location=$HOME${location:w}
    else [[ -f $location ]]
        	mv $location $backup
	fi
	ln -s $(pwd)$crap$i $location
done 
echo "Your files has been updatet and your old has been put in $backup"
