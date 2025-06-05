platform :ios, '12.0'

target 'Neeyo' do
   use_frameworks!

  # 云信基础SDK
  pod 'NIMSDK_LITE', '9.19.11'
  
  pod 'SSZipArchive'
  pod 'FURenderKit'
  

    pod 'TZImagePickerController'
    pod 'IQKeyboardManager'
    pod 'SDWebImage'
    pod 'SDWebImageFLPlugin'
    pod 'Toast'
    pod 'YYImage'
    pod 'YYImage/WebP'
    pod 'AFNetworking', '~> 4.0.1'
    pod 'Masonry'
    pod 'YYText'
    pod 'KMNavigationBarTransition'
    pod 'FFDropDownMenu'
    pod 'TXScrollLabelView'
    pod 'UMCommon'
    pod 'UMDevice'
    pod 'UMAPM'
    pod 'Bugly'
    pod 'FMDB'
    pod 'Reachability'
    pod 'SVProgressHUD'
    pod 'YYModel'
    pod 'LookinServer', :configurations => ['Debug']
    pod 'UCZProgressView'
    pod 'FLAnimatedImage'
    pod 'MJRefresh'
    pod 'WMZDialog'
    pod 'FDFullscreenPopGesture', '1.1'
    
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
    end
  end
end

