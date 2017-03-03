Pod::Spec.new do |s|
  s.name             = 'LearnStuff'
  s.version          = '0.1.0'
  s.summary          = 'LearnStuff.'

  s.description      = 'LearnStuff long description'
  s.homepage         = 'http://www.selligent.com'
  s.license          = { :type => '', :file => 'LICENSE' }
  s.author           = { 'WalterTricknot' => 'Walter.Tricknot@selligent.com' }
  s.source           = { :git => 'https://github.com/WalterTricknot/LearnStuff.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LearnStuff/Classes/**/*'
  s.public_header_files = 'LearnStuff/**/*.h'
  s.preserve_paths = 'LearnStuff/Classes/libSelligentMobile1.5.a'
  s.ios.vendored_library = 'LearnStuff/Classes/libSelligentMobile1.5.a'
  s.libraries = 'SelligentMobile1.5'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.default_subspec = 'SDK'

  s.subspec 'Core' do |sdkCore|
    sdkCore.ios.library = 'z'
    sdkCore.frameworks = 'SystemConfiguration'
    sdkCore.source_files = 'LearnStuff/Headers/*.h'
    sdkCore.preserve_paths = 'LearnStuff/Library/libSelligentMobile1.5.a'
    sdkCore.vendored_library = 'LearnStuff/Library/libSelligentMobile1.5.a'
    sdkCore.weak_framework = 'UserNotifications'
  end

  s.subspec 'SDK' do |sdk|
    sdk.source_files = 'LearnStuff/Headers/*.h'
    sdk.preserve_paths = 'LearnStuff/Library/libSelligentMobile1.5.a'
    sdk.vendored_library = 'LearnStuff/Library/libSelligentMobile1.5.a'
    sdk.libraries = 'SelligentMobile1.5'
    sdk.weak_framework = 'UserNotifications'
  end

end
