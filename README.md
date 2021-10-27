![Plivo](https://s3.amazonaws.com/plivo_blog_uploads/logo/Plivo-logo.svg?v=202108181547) 

[![Swift](https://img.shields.io/badge/Swift-5.1_5.2_5.3_5.4-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.1_5.2_5.3_5.4-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-macOS_iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS_Linux_Windows-Green?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat-square)](https://img.shields.io/cocoapods/v/Alamofire.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square)](https://github.com/Carthage/Carthage)
![CocoaPods compatible](https://img.shields.io/badge/CocoaPods-compatible-green.svg)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

# PlivoWebRTC 

This is WebRTC framework for iOS that [Plivo](https://plivo.com/) builds on top of [Google WebRTC](https://webrtc.org/native-code/ios/). It includes build which is bitcode enabled.

## Requirements

| Platform | Minimum Swift Version | Installation | Status |
| --- | --- | --- | --- |
| iOS 12.0+ / macOS 10.14+ | 5.1 | [CocoaPods](#cocoapods), [Swift Package Manager](#swift-package-manager) | Fully Tested |

## Installation

The size of the framework is huge. In order to install on your project, you can use CocoaPods or Swift Package Manager. If you want to use CocoaPods, then you have to install git-lfs first. Please refer to the [git-lfs document](https://git-lfs.github.com/).

#### CocoaPods

Add below into your Podfile.

```
platform :ios, '12.0'
use_frameworks!

target YOUR_PROJECT_TARGET do
  pod 'PlivoWebRTC'
end
```

Install WebRTC Framework through CocoaPods.

```
pod install
```

Now you can see installed WebRTC framework by inspecting `YOUR_PROJECT.xcworkspace`.

#### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but PlivoWebRTC does support its use on supported platforms.

Once you have your Swift package set up, adding PlivoWebRTC as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/plivo/plivo-webrtc-ios.git", .upToNextMajor(from: "1.0.6"))
]
```

### Install PlivoWebRTC Framework from Carthage

> Requires Carthage version 0.38 or higher

1. Add `binary "https://raw.githubusercontent.com/plivo/plivo-webrtc-ios/main/PlivoWebRTC.json"` to your Cartfile.
2. Run `carthage update --use-xcframeworks`.
3. Go to your Xcode project's `"General"` settings. Open `<YOUR_XCODE_PROJECT_DIRECTORY>/Carthage/Build/iOS` in Finder and drag `WebRTC.xcframework` to the `"Embedded Binaries"` section in Xcode. Make sure `Copy items if needed` is selected and click `Finish`.
