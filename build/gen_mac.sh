#!/bin/bash

cd ..
# 根据运行平台自动判断，如windows上生成VS项目，mac上生成xcode项目
#gyp ../src/main/main.gyp --generator-output=../out --depth=..


# mac
#gyp ../src/main/main.gyp --generator-output=../out --depth=.. -DOS=mac -f xcode
../watch_gyp/gyp src/main/main.gyp --generator-output=out --depth=. -DOS=mac -f ninja

#==========================
# ninja生成工程文件后的编译方法
#$ cd ../build
## Debug:
#$ ninja -C out/Debug
## Release:
#$ ninja -C out/Release





