{
    'variables': {
        'E_gtest_library': 'static_library'
    },
    'includes': [
      '../gtest-1.7.0.gypi',
    ],
    'target_defaults': {
        #TODO
    },
    'targets': [
      {
        'target_name': 'main',
        'type': 'executable',
        'sources': [
            './main.cpp',
            'sample1_unittest.cc',
            'sample1.cc',
            'sample1.h'
        ],
        'dependencies': [
            'E_gtest_target',
        ],

      },
    ],
}