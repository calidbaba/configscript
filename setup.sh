#!/bin/bash
backup=~/.gammledots
if [[ ! -d $backup ]]; then
   echo "boi"
   mkdir $backup
fi
crap="/"
boi=( $(ls) )
for i in ${boi[@]}; do 
    if [ $i != setup.sh ]; then 
        location=$(head -n1 $i)
        location=$HOME${location:1}
	if [[ -f $location ]];then
        	mv $location $backup
	fi
	ln -s $(pwd)$crap$i $location
        
    fi
done 
echo "Your files has been updatet and your old has been put in $backup"
