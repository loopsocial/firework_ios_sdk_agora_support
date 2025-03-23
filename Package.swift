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
            url: "https://github.com/loopsocial/firework_ios_sdk_agora_support/releases/download/v0.6.0-beta.2/FireworkVideoAgoraSupport-v0.6.0-beta.2.xcframework.zip",
            checksum: "d44dd99f57451c53e6e341cf24be12b0f91dbf99454fe60f8890d3b46950ba8a"
        )
        ,
        .target(
            name: "FireworkVideoAgoraSupportDependencies",
            dependencies: [
                .product(name: "RtcBasic", package: "AgoraRtcEngine_iOS")
            ])
    ]
)
