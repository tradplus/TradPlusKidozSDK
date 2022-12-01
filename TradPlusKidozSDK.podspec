
  Pod::Spec.new do |s|
  s.name             = 'TradPlusKidozSDK'
  s.version          = '8.9.3'
  s.summary          = 'TradPlusKidozSDK'
  s.description      = <<-DESC
      TradPlusKidozSDK,TradPlusKidozSDK,Kidoz
                       DESC
  s.homepage         = 'https://github.com/tradplus/TradPlusKidozSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TradPlus' => 'ios' }
  s.source           = { :git => 'https://github.com/tradplus/TradPlusKidozSDK.git', :tag => s.version }
  
  s.ios.deployment_target = '9.0'
  
  s.requires_arc = true

  s.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  s.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  
  s.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  valid_archs = ['armv7', 'arm64']
  s.source_files  = "KidozSDK/*.h"
  s.vendored_library = 'KidozSDK/libKidozSDK.a'
  
end
