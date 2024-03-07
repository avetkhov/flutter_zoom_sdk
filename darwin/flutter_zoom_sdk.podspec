Pod::Spec.new do |s|
  s.name             = 'flutter_zoom_sdk'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for Zoom SDK.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/rentready/flutter_zoom_sdk'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Rent Ready LLC' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'

  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'
  s.dependency 'MobileRTC'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.11'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-framework MobileRTC', 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
