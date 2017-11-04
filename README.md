
# Tidy Cup

对比文件, 显示出相同的文件 
使用md5进行对比

### 检测重复文件
```
./tidycopy.sh
```

### 输入示例

首先会给每个文件生成.md5校验码
再对校验码进行对比


```
./tidycopy.sh

caculate file md5 ...
file not exist skip, file,  .
md5file exist skip, md5file, ./a.md5
md5file exist skip, md5file, ./a.md5
md5file exist skip, md5file, ./b.md5
md5file exist skip, md5file, ./b.md5
create ./c.md5
merge md5 files ...
  results
---------------------------------
d41d8cd98f00b204e9800998ecf8427e ./a.md5
d41d8cd98f00b204e9800998ecf8427e ./b.md5
d41d8cd98f00b204e9800998ecf8427e ./c.md5
```

### 其它
使用了`guniq` mac用户需要安GUN CoreUtil [install coreutil in mac](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities)
