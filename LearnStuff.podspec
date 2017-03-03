Pod::Spec.new do |s|
  s.name             = 'LearnStuff'
  s.version          = '0.1.0'
  s.summary          = 'LearnStuff.'

  s.description      = 'LearnStuff long description'
  s.homepage         = 'http://www.selligent.com'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
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
  s.source_files = 'LearnStuff/Headers/*.h'
  s.preserve_paths = 'LearnStuff/Library/libSelligentMobile1.5.a'
  s.vendored_library = 'LearnStuff/Library/libSelligentMobile1.5.a'
  s.libraries = 'SelligentMobile1.5'
  s.weak_framework = 'UserNotifications'

end
