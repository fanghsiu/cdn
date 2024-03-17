@echo off
setlocal enabledelayedexpansion

:: 创建一个空的README.md文件
if exist README.md del README.md

:: 将标题写入文件
echo # Image Hosting>> README.md
echo.>> README.md

:: 遍历img文件夹下的所有文件
for %%f in (img\*) do (
    :: 获取文件名（包括扩展名）
    set filename=%%~nxf

    :: 拼接URL和文件名
    set url=https://cdn.fanghsiu.top/img/!filename!

    :: 将结果写入readme.md文件
    echo !url!>> README.md
)

:: 结束批处理
endlocal
