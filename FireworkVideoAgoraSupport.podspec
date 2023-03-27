Pod::Spec.new do |s|
  s.name             = 'FireworkVideoAgoraSupport'
  s.version          = '0.1.0'
  s.summary          = 'FireworkVideoAgoraSupport'

  s.homepage         = 'https://github.com/loopsocial/firework_ios_sdk_agora_support'
  s.license          = { :text => "Copyright 2023 Loop Now Technologies, Inc.", :type => "Copyright" }
  s.author           = "Loop Now Technologies, Inc."
  s.platform         = :ios, "11.0"
  s.module_name      = "FireworkVideoAgoraSupport"
  s.source           = { :http => "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/
  v#{s.version}/FireworkVideoAgoraSupport-v#{s.version}.xcframework.zip" }

  s.preserve_paths           = "FireworkVideoAgoraSupport.xcframework"
  s.ios.vendored_frameworks  = "FireworkVideoAgoraSupport.xcframework"
  s.cocoapods_version        = '>= 1.10.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end