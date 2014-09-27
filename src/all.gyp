{
    'variables': {
        #TODO
    },

    'targets': [
    {
        'target_name': 'all',
        'type': 'none',
        'dependencies': [
            'cmd_app/main.gyp:*',
            'library/library.gyp:*',
            'iOS_app/iOS_app.gyp:*',
            'android_app/android_app.gyp:*',
        ],
    },
    ], # targets
}