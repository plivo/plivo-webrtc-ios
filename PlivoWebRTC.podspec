Pod::Spec.new do |s|
  s.name         = "PlivoWebRTC"
  s.version      = "1.0.8"
  s.summary      = "WebRTC Framework"
  s.description  = "WebRTC Framework for Plivo SDK's"
  s.homepage     = "https://www.plivo.com/docs/sdk/ios/v2/"
  s.license      = { :type => 'Commercial', :text => "Copyright 2011-2019 Plivo. All rights reserved. Use of this software is subject to the terms and conditions of the Plivo Terms of Service located at https://www.plivo.com/privacy/" }
  s.authors      = { 'Plivo Inc' => 'support@plivo.com' }
  s.source       = { :http => "https://s3.us-west-1.amazonaws.com/helpers.plivo.com/ios/WebRTC.xcframework.zip" }
  s.requires_arc = true
  s.platform = :ios, "10.0"
  s.ios.vendored_frameworks = 'WebRTC.xcframework', 'WebRTC.xcframework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
