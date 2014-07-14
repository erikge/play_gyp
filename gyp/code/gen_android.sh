#!/bin/bash

# android
#ANDROID_BUILD_TOP=`pwd` gyp android_app/android_app.gyp --depth=. -Dlibrary=static_library -DOS=android -f android-make

ANDROID_BUILD_TOP=`pwd` gyp android_app/android_app.gyp --generator-output=../build --depth=. -Dlibrary=static_library -DOS=android -f ninja  -GGYP_CROSSCOMPILE=1 --check