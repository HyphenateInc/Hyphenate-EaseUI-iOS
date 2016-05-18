Pod::Spec.new do |spec|
  spec.name         = 'EaseUI'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.summary      = 'EaseMob UI Kit'
  spec.homepage     = 'https://github.com/HyphenateInc/easeui_ios'
  spec.author       = {'EaseMob Inc.' => 'admin@easemob.com'}
  spec.source       =  {:git => 'https://github.com/HyphenateInc/easeui_ios.git', :tag => spec.version.to_s }
  spec.source_files = 'EaseUI/**/*.{h,m,mm}'
  spec.platform     = :ios, '6.0'
  spec.vendored_libraries = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/libopencore-amrnb.a','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/libopencore-amrwb.a']
  spec.requires_arc = true
  spec.resource     = 'export/resources/EaseUIResource.bundle'
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
end
