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
            url: "https://s3.us-west-1.amazonaws.com/helpers.plivo.com/ios/WebRTC.xcframework-1.1.6-beta.zip",
            checksum: "4b592077e49bce14230bc04da9296a916d867767de8db445503b39bd0e60aff0"
        )
    ]
)
