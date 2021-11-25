Pod::Spec.new do |s|
s.name                      = "CleverTap-iOS-SDK"
s.version                   = "3.10.0"
s.summary                   = "The CleverTap iOS SDK for App Analytics and Engagement."
s.homepage                  = "https://github.com/CleverTap/clevertap-ios-sdk"
s.license                   = { :type => "MIT" }
s.author                    = { "CleverTap" => "http://www.clevertap.com" }
s.source                    = { :git => "https://github.com/asifmohd/clevertap-ios-sdk.git", :branch => 'remove_unused_features_from_ct_3_10_0' }
s.requires_arc              = true
s.module_name               = 'CleverTapSDK'
s.resources                 = 'CleverTapSDK/*.crt'
s.ios.dependency             'SDWebImage', '~> 5.1'
s.ios.resources             = 'CleverTapSDK/**/*.{png,xib}', 'CleverTapSDK/**/*.xcdatamodeld'
s.ios.deployment_target     = '9.0'
s.ios.source_files          = 'CleverTapSDK/**/*.{h,m}'
s.ios.exclude_files         = 'CleverTapSDK/Inbox/**/*'
s.ios.public_header_files   = 'CleverTapSDK/CleverTap.h', 'CleverTapSDK/CleverTap+SSLPinning.h','CleverTapSDK/CleverTap+Inbox.h', 'CleverTapSDK/CleverTapInstanceConfig.h', 'CleverTapSDK/CleverTapBuildInfo.h', 'CleverTapSDK/CleverTapEventDetail.h', 'CleverTapSDK/CleverTapInAppNotificationDelegate.h', 'CleverTapSDK/CleverTapSyncDelegate.h', 'CleverTapSDK/CleverTapTrackedViewController.h', 'CleverTapSDK/CleverTapUTMDetail.h', 'CleverTapSDK/CleverTapJSInterface.h', 'CleverTapSDK/CleverTap+DisplayUnit.h', 'CleverTapSDK/CleverTap+FeatureFlags.h', 'CleverTapSDK/CleverTap+ProductConfig.h', 'CleverTapSDK/CleverTapPushNotificationDelegate.h', 'CleverTapSDK/CleverTapURLDelegate.h',
    'CleverTapSDK/CleverTap+InAppNotifications.h'
s.ios.xcconfig = { :GCC_PREPROCESSOR_DEFINITIONS => "CLEVERTAP_NO_INBOX_SUPPORT=1" }
s.tvos.deployment_target    = '9.0'
s.tvos.source_files         = 'CleverTapSDK/*.{h,m}', 'CleverTapSDK/ProductConfig/**/*.{h,m}', 'CleverTapSDK/FeatureFlags/**/*.{h,m}'
s.tvos.exclude_files        = 'CleverTapSDK/CleverTapJSInterface.{h,m}'
s.tvos.public_header_files  = 'CleverTapSDK/CleverTap.h', 'CleverTapSDK/CleverTap+SSLPinning.h', 'CleverTapSDK/CleverTapInstanceConfig.h', 'CleverTapSDK/CleverTapBuildInfo.h', 'CleverTapSDK/CleverTapEventDetail.h', 'CleverTapSDK/CleverTapSyncDelegate.h', 'CleverTapSDK/CleverTapTrackedViewController.h', 'CleverTapSDK/CleverTapUTMDetail.h', 'CleverTapSDK/CleverTap+FeatureFlags.h', 'CleverTapSDK/CleverTap+ProductConfig.h'
end
