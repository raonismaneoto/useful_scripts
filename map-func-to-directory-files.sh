#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Illegal number of parameters"
fi

func=$1
directory=$2
filenames=`ls $2`

optional_dir=$3

if [ ! -z "$optional_dir" ] ; then
    for filename in $filenames; do
	$func $directory/$filename $optional_dir
    done
else
    for filename in $filenames; do
	$func $directory/$filename
    done
fi


