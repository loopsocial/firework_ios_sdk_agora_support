// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoAgoraSupport",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FireworkVideoAgoraSupport",
            targets: ["FireworkVideoAgoraSupport", "FireworkVideoAgoraSupportDependencies"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/AgoraIO/AgoraRtcEngine_iOS.git",
            .exact("4.4.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FireworkVideoAgoraSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.6.0-beta.1/FireworkVideoAgoraSupport-v0.6.0-beta.1.xcframework.zip",
            checksum: "80044b7603992a0a743dc8fcb8be6c6a41d7637e81a0c575e224b9a50a523e25"
        )
        ,
        .target(
            name: "FireworkVideoAgoraSupportDependencies",
            dependencies: [
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS")
            ])
    ]
)
