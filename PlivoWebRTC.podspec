Pod::Spec.new do |s|
  s.name         = "PlivoWebRTC"
  s.version      = "1.0.23"
  s.summary      = "WebRTC XCFramework"
  s.description  = "WebRTC XCFramework for Plivo SDK's"
  s.homepage     = "https://www.plivo.com/docs/sdk/client/ios/overview/"
  s.license      = { :type => 'Commercial', :text => "Copyright 2011-2019 Plivo. All rights reserved. Use of this software is subject to the terms and conditions of the Plivo Terms of Service located at https://www.plivo.com/privacy/" }
  s.authors      = { 'Plivo Inc' => 'support@plivo.com' }
  s.source       = { :http => "https://s3.us-west-1.amazonaws.com/helpers.plivo.com/ios/WebRTC.xcframework.zip" }
  s.platform = :ios
  s.ios.deployment_target  = '12.0'
  s.vendored_frameworks = "WebRTC.xcframework"
end

