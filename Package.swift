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
            checksum: "8fad0f8a612e59204d2ab4e29e611213aa31522b5253dedfe9405ddcdc00437c"
        )
    ]
)
