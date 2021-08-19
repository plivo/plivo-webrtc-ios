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
## Build & Release

To build and release the latest version of WebRTC use the given instruction on [Google WebRTC](https://webrtc.org/native-code/ios/). 

#### Building the XCFramework:

Once the individual archives have been compiled, we can create the XCFramework itself.

```swift
xcodebuild -create-xcframework \
	-framework /{your webrtc out device path}/WebRTC.framework \
	-framework /{your webrtc out sim path}/WebRTC.framework \
	-output out/WebRTC.xcframework
 ```
  
#### Publicly host the XCFramework

In order to distribute the compiled package, we need to host it somewhere with public accessibility. One way to do this is to push the XCFramework to the S3 bucket and use that as the binary target URL.

Going with this route, we need to create a ZIP file with the XCFramework at the root and calculate the checksum of the resulting file, which will be needed for the Package manifest.

```swift
# Create the ZIP file
zip -r -X WebRTC.xcframework.zip WebRTC.xcframework
```

```swift
# Calculate the checksum
swift package compute-checksum WebRTC.xcframework.zip
```

#### Release

* Change version in PlivoWebRTC.podspec in develop branch and commit it.
* Create existing production master tag with the same version.
* Merge changes from develop to master and create a new tag.
* Release on cocoapods using these commands : 
```swift
  git tag '1.0.6'
  git push --tags
  pod trunk register {EMAIL} ‘{NAME}' --description='macbook air'
```
* Verify Email from cocoapods.
* Release on CocoaPods. 
```swift
 pod trunk push PlivoWebRTC.podspec
```
