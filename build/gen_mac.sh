#!/bin/bash

cd ..
export GYP_DEFINES="$GYP_DEFINES OS=mac target_arch=x64" # "library=static_library"
export GYP_GENERATOR_OUTPUT=out
export GYP_GENERATORS=ninja # xcode

../watch_gyp/gyp src/main/main.gyp --depth=.

#==========================
# ninja生成工程文件后的编译方法
#$ cd ../out
## Debug:
#$ ninja -C out/Debug
## Release:
#$ ninja -C out/Release





