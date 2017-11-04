
# Tidy Cup

对比文件, 显示出相同的文件

目前使用md5进行对比





### 为当前目录中的所有文件生成 `文件名.md5` 文件
```
genmd5.sh
```

### 为当前目录中的所有mp4文件生成 `文件名.md5` 文件
```
genmd5.sh "*.mp4"
```

### 对比当前目录中的`文件名.md5`文件，并显示md5重复的文件
```
comparemd5.sh 
```

### 其它
使用了`guniq` mac用户需要安GUN CoreUtil [install coreutil in mac](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities)
