#!/bin/sh

#################################################
#
# Generator File md5 File
#
#################################################

FILE_TYPE='*'
if [ $# == 1 ]; then 
    FILE_TYPE="$1"
fi

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
        echo 'gen ' "$md5file"
    fi
done
