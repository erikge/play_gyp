{
    'variables': {
        #TODO
    },
    'includes': [
      '../../../build/common.gypi',
    ],
    'target_defaults': {
        #TODO
    },
    'targets': [
      {
        'target_name': 'ishow',
        'type': 'shared_library',
        'sources': [
            'native_jni.cpp'
        ],
        'dependencies': [
            #'<(DEPTH)/library/library.gyp:*', #<(DEPTH)为gyp运行目录
            #'../library/library.gyp:*',
        ],
        'link_settings': {
            'ldflags': [
                '-llog',
            ]
        },

      },
    ],
}