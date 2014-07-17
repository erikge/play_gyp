# iOS 真机
export GYP_GENERATOR_OUTPUT=../build

export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=armv7"
export GYP_CROSSCOMPILE=1

export GYP_GENERATORS=xcode

gyp iOS_app/iOS_app.gyp --depth=. -Dlibrary=static_library

