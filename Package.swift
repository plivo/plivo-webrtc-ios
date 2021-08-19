// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://s3.us-west-1.amazonaws.com/helpers.plivo.com/ios/WebRTC.xcframework.zip",
            checksum: "716b80d7ab67dfc619a426c07daee44ce69e485ef0164d6eb3c5d8efdee245c6"
        )
    ]
)
