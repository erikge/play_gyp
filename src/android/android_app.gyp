{
    'variables': {
        #TODO
    },
    'includes': [
      '../common.gypi',
    ],
    'target_defaults': {
        #TODO
    },
    'targets': [
      {
        # 生成的so命名规则：lib_<pkg-name>_<target_name>_gyp.so
        # 如本例子中是：lib_android_app_ishow_gyp.so
        # pkg-name是gyp文件所在文件夹的名字
        'target_name': 'ishow',
        'type': 'shared_library',
        'sources': [
            'jni/native_jni.cpp'
        ],
        'dependencies': [
            #'<(DEPTH)/library/library.gyp:*', #<(DEPTH)为gyp运行目录
            '../library/library.gyp:*',
        ],
        'link_settings': {
            'ldflags': [
                '-llog',
            ]
        },

      },
    ],
}