Pod::Spec.new do |s|
  s.name             = 'FireworkVideoAgoraSupport'
  s.version          = '0.6.0-beta.2'
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

  s.script_phases = [
    {
      :name => 'Check FireworkVideo version from FireworkVideoAgoraSupport',
      :script => '
      LIBRARY_NAME="FireworkVideo"
      BASE_VERSION="1.29.0"

      INFO_PLIST_PATH="${PODS_ROOT}/"$LIBRARY_NAME"/"$LIBRARY_NAME".xcframework/ios-arm64/"$LIBRARY_NAME".framework/Info.plist"
      if [ ! -e "$INFO_PLIST_PATH" ]; then
        echo "$LIBRARY_NAME is not installed."
        exit 0
      fi

      FRAMEWORK_VERSION=$(plutil -convert xml1 -o - "$INFO_PLIST_PATH" | grep -A 1 "<key>CFBundleShortVersionString</key>" | grep "<string>" | sed "s/.*<string>\(.*\)<\/string>.*/\1/")
      echo "Checking $LIBRARY_NAME version: $FRAMEWORK_VERSION"
      if [[ -n "$FRAMEWORK_VERSION" ]]; then
        if awk "BEGIN {exit !(ARGV[1] < ARGV[2])}" "$FRAMEWORK_VERSION" "$BASE_VERSION"; then
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is incompatible with the current version of FireworkVideo. Please use a version of $LIBRARY_NAME that is $BASE_VERSION or higher."
        exit 1
        else
          echo "Version $FRAMEWORK_VERSION of $LIBRARY_NAME is compatible with the current version of FireworkVideo."
        fi
      else
        echo "Failed to extract framework version."
      fi
      '
    },
  ]

  s.dependency 'AgoraRtcEngine_iOS/RtcBasic', '4.4.0'

end
