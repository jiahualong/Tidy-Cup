#!/bin/sh

mergeFile="_merge_md5_$(date +%s)"

file_arr=`find . -name '*.md5' -print`

for file in ${file_arr[*]}
do
    echo `cat "$file"` "$file" >> $mergeFile
done

sort -k1 $mergeFile | guniq -w33 -D
rm $mergeFile
