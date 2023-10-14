#!/bin/bash

# 指定要比较的目录
DIR=$1

# 获取目录下的所有文件
FILES=$(find $DIR -type f)

# 遍历每个文件进行比较
for file1 in $FILES; do
  for file2 in $FILES; do
    # 确保不比较同一个文件
    if [ "$file1" != "$file2" ]; then
      # 使用diff命令比较文件差异，并获取差异行数
      diff_count=$(diff $file1 $file2 | wc -l)

      # 获取文件总行数
      file1_lines=$(cat $file1 | wc -l)
      file2_lines=$(cat $file2 | wc -l)

      # 如果差异行数小于等于1，则记录文件名
      if [ $diff_count -le 6 ]; then
        echo "$file1 $file2 $diff_count $file1_lines $file2_lines" >> duplicates.txt
      fi
    fi
  done
done