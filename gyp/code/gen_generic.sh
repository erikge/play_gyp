# iOS 真机
export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=armv7"
export GYP_CROSSCOMPILE=1
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=xcode

# iOS 模拟器
export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=ia32"
export GYP_CROSSCOMPILE=1
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=xcode

# mac
export GYP_DEFINES="$GYP_DEFINES OS=mac target_arch=x64"
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=xcode

# android arm target
export GYP_DEFINES="$GYP_DEFINES OS=android"
export GYP_CROSSCOMPILE=1
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=ninja

# android x86 target
export GYP_DEFINES="$GYP_DEFINES OS=android target_arch=ia32"
export GYP_CROSSCOMPILE=1
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=ninja

# android MIPS target
export GYP_DEFINES="$GYP_DEFINES OS=android target_arch=mipsel"
export GYP_CROSSCOMPILE=1
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=ninja

# windows
export GYP_DEFINES="$GYP_DEFINES OS=win"
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS= msvs # or msvs-ninja
export GYP_MSVS_VERSION = 2008

# linux
export GYP_DEFINES="$GYP_DEFINES OS=linux" # or unix
export GYP_GENERATOR_OUTPUT=../build
export GYP_GENERATORS=make

# gyp 其他可用的 环境变量
GYP_GENERATOR_FLAGS
# 查看 gyp 的命令行选项
gyp -h



