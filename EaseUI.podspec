Pod::Spec.new do |spec|
  spec.name         = 'EaseUI'
  spec.version      = '3.1.2'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.summary      = 'Hyphenate UI Kit'
  spec.homepage     = 'https://github.com/HyphenateInc/Hyphenate-EaseUI-iOS'
  spec.author       = {'Hyphenate Inc.' => 'info@hyphenate.io'}
  spec.source       =  {:git => 'https://github.com/HyphenateInc/Hyphenate-EaseUI-iOS.git', :tag => spec.version.to_s }
  spec.source_files = 'EaseUI/**/*.{h,m,mm}'
  spec.platform     = :ios, '6.0'
  spec.vendored_libraries = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/libopencore-amrnb.a','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/libopencore-amrwb.a']
  spec.requires_arc = true
  spec.resources    = ['export/resources/EaseUIResource.bundle','EaseUI/**/*.{xib,nib}']
  spec.prefix_header_contents = '#import "UIColor+EaseUI.h"'
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
end
