// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoAgoraSupport",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FireworkVideoAgoraSupport",
            targets: ["FireworkVideoAgoraSupport", "FireworkVideoAgoraSupportDependencies"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git",
            .upToNextMajor(from: "4.1.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FireworkVideoAgoraSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.4.2/FireworkVideoAgoraSupport-v0.4.2.xcframework.zip",
            checksum: "d6cd355e0f6e834e3780881185605fcf4b392c7b7204ea08342969a289732773"
        )
        ,
        .target(
            name: "FireworkVideoAgoraSupportDependencies",
            dependencies: [
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS")
            ])
    ]
)
