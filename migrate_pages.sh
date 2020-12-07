#!/bin/bash

for each in `ls | grep -v _` 
do
    pagenum=1
    for each_file in `ls $each | grep .md$` 
    do 
        echo "copy $each/$each_file to _post/$each-$pagenum.md\n"
        cp -n $each/$each_file ./_posts/$each-$pagenum.md
        pagenum=$pagenum+1
    done
done

