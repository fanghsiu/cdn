#!/bin/bash
# 如果没有消息后缀，默认提交信息为 :pencil: Update content
info=${1:-"Update content"}
git add -A
git commit -m "$info"
git push
