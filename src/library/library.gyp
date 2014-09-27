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
        'target_name': 'crossLib',
        'type': '<(library)',
        'include_dirs': [
            'include',
        ],
        'sources': [
            'src/math.cpp',
            'src/say.cpp'
        ],
        'direct_dependent_settings': {
            'include_dirs': [
                'include',
            ],
        },
        'conditions': [
            ['OS=="android"', { # android
                'link_settings': {
                    'ldflags': [
                        '-llog',
                    ]
                },
                'sources': [
                    #'linux_specific.cc',
                ]
            }], # end android
        ]

      },
    ],
}