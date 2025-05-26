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
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.7.0/FireworkVideoAgoraSupport-v0.7.0.xcframework.zip",
            checksum: "cd541cd29938ad8135980c81894fb0922d188e9a07fd733ba14f92a4473d99b9"
        )
        ,
        .target(
            name: "FireworkVideoAgoraSupportDependencies",
            dependencies: [
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS")
            ])
    ]
)
