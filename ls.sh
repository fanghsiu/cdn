#!/bin/bash
# 删除README.md文件
rm -f README.md

# 将标题写入文件
echo "# Image Hosting" >> README.md
echo "" >> README.md

# 遍历img文件夹下的所有文件
for file in img/*; do
    # 获取文件名（不包括扩展名）
    filename=$(basename "$file")

    # 拼接URL和文件名
    url="https://cdn.fanghsiu.top/img/$filename"

    # 将结果写入README.md文件
    echo $url >> README.md
done
