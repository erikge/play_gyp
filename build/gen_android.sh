#!/bin/bash

cd ../src/android/jni
export GYP_DEFINES="$GYP_DEFINES OS=android"
export GYP_CROSSCOMPILE=1
#export GYP_GENERATOR_OUTPUT=out # The Android backend does not support options.generator_output
export GYP_GENERATORS=android-make # ninja
export ANDROID_BUILD_TOP=`pwd`

../../../../watch_gyp/gyp android_jni.gyp --depth=. --check
