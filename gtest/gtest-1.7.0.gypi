{
    'variables': {
        #TODO
        # user-defined:
        #               gtest_library
    },
    'includes': [
    ],
    'target_defaults': {
    },
    'targets': [
      {
        'target_name': 'gtest',
        'type': '<(gtest_library)',
        'include_dirs': [
            'gtest-1.7.0',
            'gtest-1.7.0/include',
        ],
        'sources': [
            'gtest-1.7.0/src/gtest-all.cc',
        ],
        'direct_dependent_settings': {
            'include_dirs': [
                'gtest-1.7.0/include',
            ],
        },

      },
    ],
}