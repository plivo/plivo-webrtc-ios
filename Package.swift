// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlivoVoiceWebRTC",
    platforms: [
        .iOS(.v11)
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
            checksum: "88f2a6f111e4fa8f8d7e671407c33d1e15621c2a86a9c33ab43d40d4497eab96"

        )
    ]
)
