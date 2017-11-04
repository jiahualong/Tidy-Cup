#!/bin/sh
#################################################
#
#           Tidy Cup
#
#################################################


echo 'caculate file md5 ... '

## file filter 
FILE_TYPE='*'
if [ $# == 1 ]; then 
    FILE_TYPE="$1"
fi

## caculate 
file_arr=`find . -name "$FILE_TYPE" -print`
for file in ${file_arr[*]}
do
    md5file="${file%.*}".md5
    if [ -f "$md5file" ]
    then 
        echo "md5file exist skip, md5file, $md5file"
    elif [ ! -f "$file" ]
    then
        echo "file not exist skip, file,  $file"
    else 
        md5code=`md5 -q "$file"`
        echo $md5code > "$md5file"
        echo 'create' "$md5file"
    fi
done

echo 'merge md5 files ...'
mergeFile="_merge_md5_$(date +%s)"
file_arr=`find . -name '*.md5' -print`
for file in ${file_arr[*]}
do
    echo `cat "$file"` "$file" >> $mergeFile
done

echo '  results ' 
echo '---------------------------------'
sort -k1 $mergeFile | guniq -w33 -D
rm $mergeFile

