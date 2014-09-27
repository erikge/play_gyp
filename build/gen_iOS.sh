#!/bin/bash

# --generator-output=../build 和 -Goutput_dir=../build/ 效果相同


#gyp iOS_app/iOS_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=iOS -f xcode

# 生成iOS的ninja build文件
# 这些选项（-Ddisable_nacl=1 -Dios_mac_build=1 --ignore-environment）不明作用
gyp iOS_app/iOS_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=iOS -f ninja  -GGYP_CROSSCOMPILE=1 -Dtarget_arch=ia32

####
# target_arch=armv7
#
# function wrsim() {
# wrbase
# export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=ia32"
# export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_sim"
# export GYP_CROSSCOMPILE=1
# }

# function wrios() {
# wrbase
# export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=armv7"
# export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_ios"
# export GYP_CROSSCOMPILE=1
# }

# function wrmac() {
# wrbase
# export GYP_DEFINES="$GYP_DEFINES OS=mac target_arch=x64"
# export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_mac"
# }
