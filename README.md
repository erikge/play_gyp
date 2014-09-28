play_gyp
=======

首先目标时保证在mac、android、windows上可以使用。

1. directory structure

+ src: soure code
+ build: gyp related configuration, and executable shell script
+ out: gyp generated project files, and other generated files 
+ ref: gyp example files as reference

2. 路径问题

运行gyp命令行时，通过--depth=.设置工程根目录，--depth=.貌似只能设置为当前目录，设置成其他的不能正常生成工程文件。*.gyp文件中通过<(DEPTH)访问该根目录。所以，根目录只能是运行gyp的目录
*.gyp文件中的相对路径都是针对当前gyp文件的路径。

3. android编译

两种生成方式，android-make(默认的android.mk的方式)和ninja。

android-make方式不能指定生成目录（GYP_GENERATOR_OUTPUT）。会生成一个顶级GypAndroid.mk文件，位于在运行gyp的目录；会为每个targek生成一个<target-name>.target.mk文件，位于*.gyp文件所在目录。
生成so的方式为标准的ndk-build命令，通过gni目录下的Application.mk指定顶级GypAndroid.mk文件，生成的so位于libs目录下，命名规则为lib_<pkg-name>_<target-name>_gyp.so。其中pkg-name为顶级GypAndroid.mk到所生成target的相对目录。
所以，为了简化，可以将运行gyp的目录，*.gyp文件所在的目录都放到jni下面。



