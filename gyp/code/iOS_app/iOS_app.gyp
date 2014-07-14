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
        'target_name': 'iShow_app',
        'product_name': 'app_on_ios',
        'type': 'executable',
        'mac_bundle': 1,
        'sources': [
            'iShow/AppDelegate.h',
            'iShow/AppDelegate.m',
            'iShow/iShow-Prefix.pch',
            'iShow/main.m',
            'iShow/ViewController.h',
            'iShow/ViewController.mm',
        ],
        'mac_bundle_resources': [
            'iShow/en.lproj/InfoPlist.strings',
            'iShow/Base.lproj/Main_iPad.storyboard',
            'iShow/Base.lproj/Main_iPhone.storyboard',
            'iShow/Images.xcassets',
        ],
        'link_settings': {
            'libraries': [
                '${SDKROOT}/System/Library/Frameworks/UIKit.framework',
                #'$(SDKROOT)/System/Library/Frameworks/Foundation.framework',
                #'${SDKROOT}/System/Library/Frameworks/CoreGraphics.framework',

            ],
        },
        'xcode_settings': {
            'INFOPLIST_FILE': 'iShow/iShow-Info.plist',
        },
        
        'dependencies': [
            '../library/library.gyp:*',
        ],

    },
    ],
}