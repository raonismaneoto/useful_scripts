#!/bin/bash

scripts=`ls`

for script in $scripts
do
	filename=$(basename -- "$script")
	filename="${filename%.*}"
	mv $script /usr/local/bin/$filename
	chmod +x /usr/local/bin/$filename
done

rm -rf ../useful_scripts

