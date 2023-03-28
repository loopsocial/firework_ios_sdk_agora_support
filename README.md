# FireworkVideo Agora Supporting Library

## About

A supporting library for the Agora Interactive Live Streaming SDK for use with FireworkVideo live stream multi-host playback. Using this library enables low latency multi-host live streaming.

## Agora Interactive Live Streaming SDK Documentation

This supporting library assumes basic familiarity with Agora. If needed, read over the Agora [Documentation](https://docs.agora.io/en/Interactive%20Broadcast/landing-page) before diving in.


**The supporting library only supports Agora SDK 4.0.1 or higher. Using the supporting library alongside a version of Agora SDK below 4.0.1 may result in undefined behavior.**

## FireworkVideo SDK Documentation

This supporting library is intended to be used alongside FireworkVideo SDK. Read over the [FireworkVideo SDK documentation](https://github.com/loopsocial/firework_ios_sdk#fireworkvideo) and [sample code](https://github.com/loopsocial/firework_ios_sdk/tree/main/FireworkVideoSample) to ensure smooth integration with Agora SDK.

Ensure your Firework content is configured and apply correct styling and/or layout before integrating the Agora supporting library. This will ensure your testing conditions will match your production environment.

## Setup

  1. Add FireworkVideoSDK to your project; follow the [Firework Video installation instructions](https://github.com/loopsocial/firework_ios_sdk#readme).
  2. Add Agora Live Streaming SDK to your project; follow the [Agora installation instructions](https://docs.agora.io/en/interactive-live-streaming/get-started/get-started-sdk?platform=ios).
  3. Add SwiftProtobuf SDK to your project; follow the [SwiftProtobuf installation instructions](https://github.com/apple/swift-protobuf#adding-the-swiftprotobuf-library-to-your-project)
  4. Add FireworkVideoAgoraSupporting library to your project; follow the instructions [below](#installation).

### Installation

  1. Swift Package Manager is the recommended way to install the FireworkVideo Agora Supporting Library.

  > Note: you can also install the library via Cocoapods `pod 'FireworkVideoAgoraSupport'`
  
  > Note: alternatively you can [download the binary](https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/latest) directly and install it manually.
  
  2. Add project permissions to your Info.plist for microphone (NSMicrophoneUsageDescription) and camera usage (NSCameraUsageDescription)

## Using the SDK

Set up the SDK alongside FireworkVideo as soon as possible after app launch. See below code snippet.

```     
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // First initialize the FireworkVideoSDK
        FireworkVideoSDK.initializeSDK()
        
        FireworkVideoSDK.enableMultiHostPlayback()
        
        return true
    }
```

After both SDKs are initialized, FireworkVideo will make internal requests to the supporting library as determined by the Firework configuration for your App ID.

