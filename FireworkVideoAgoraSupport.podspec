Pod::Spec.new do |s|
  s.name             = 'FireworkVideoAgoraSupport'
  s.version          = '0.5.0'
  s.summary          = 'FireworkVideoAgoraSupport'

  s.homepage         = 'https://github.com/loopsocial/firework_ios_sdk_agora_support'
  s.license          = { :text => "Copyright 2023 Loop Now Technologies, Inc.", :type => "Copyright" }
  s.author           = "Loop Now Technologies, Inc."
  s.platform         = :ios, "13.0"
  s.module_name      = "FireworkVideoAgoraSupport"
  s.source           = { :http => "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v#{s.version}/FireworkVideoAgoraSupport-v#{s.version}.xcframework.zip" }
  s.swift_version    = '5.3'

  s.preserve_paths           = "FireworkVideoAgoraSupport.xcframework"
  s.ios.vendored_frameworks  = "FireworkVideoAgoraSupport.xcframework"
  s.cocoapods_version        = '>= 1.10.0'

  s.dependency 'AgoraRtcEngine_iOS/RtcBasic', '4.2.6'

end
