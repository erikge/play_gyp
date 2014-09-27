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
        'target_name': 'main',
        'type': 'executable',
        'sources': [
            './main.cpp'
        ],
        'dependencies': [
            #'<(DEPTH)/library/library.gyp:*', #<(DEPTH)为gyp运行目录
            '../library/library.gyp:*',
        ],

      },
    ],
}