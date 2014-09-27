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



