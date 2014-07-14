# Usage: 
# The user should define the following Variables:
#   * E_gtest_library

{
    'targets': [
      {
        'target_name': 'E_gtest_target',
        'type': '<(E_gtest_library)',
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