### 写一个脚本， 遍历/data/目录下的txt文件
### 将这些txt文件做一个备份
### 备份的文件名增加一个年月日的后缀，比如将 amazing.txt 备份成为 amazing.txt_20231001

###. --------  以下为脚本正文  ------------

#!/bin/bash
#author: alex
#version: v1
#data:2023-10-28

## 定义后缀变量，注意反引号
suffix = `date +%Y%m%d`

## 找到/data/目录下的txt文件，用for循环遍历
for f in `find /data/ -type f -name "*.txt"`
do
	echo "备份文件 $f"
	cp ${f} ${f}_${suffix}
done

## 知识点总结：
## 1. date 命令用法，可以根据日期，时间获取想到的字符
## 2. for 循环如何便利文件