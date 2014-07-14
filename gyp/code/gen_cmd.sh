#!/bin/bash

# 根据运行平台自动判断，如windows上生成VS项目，mac上生成xcode项目
#gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library

# win
#gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=win -f msvs

# mac
#gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=mac -f xcode
gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=mac -f ninja
# ninja生成工程文件后的使用方法
#$ cd ../build
## Debug:
#$ ninja -C out/Debug
## Release:
#$ ninja -C out/Release



# ------- playground --------
## 这种错位貌似对gyp没有影响，gyp只看-f的设置，根据-f的format生成对应的工程文件。
## -DOS的设置只会对gyp文件中的配置选项有影响。会导致生成的xcode工程文件缺少对应的xcode配置，或VS工程缺少VS配置
#gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=mac -f msvs
#gyp cmd_app/cmd_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=win -f xcode

