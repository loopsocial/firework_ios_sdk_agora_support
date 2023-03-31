// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoAgoraSupport",
    products: [
        .library(
            name: "FireworkVideoAgoraSupport",
            targets: ["FireworkVideoAgoraSupport"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideoAgoraSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.2.0/FireworkVideoAgoraSupport-v0.2.0.xcframework.zip",
            checksum: "80b04f9c072bf748ec747110724606bfb7d92a7b552c1e4c1a187d7352ec4277"
        )
    ]
)
