Pod::Spec.new do |s|
  s.name             = 'LearnStuff'
  s.version          = '0.1.0'
  s.summary          = 'LearnStuff.'

  s.description      = 'LearnStuff long description'
  s.homepage         = 'http://www.selligent.com'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'WalterTricknot' => 'Walter.Tricknot@selligent.com' }
  s.source           = { :git => 'https://github.com/WalterTricknot/LearnStuff.git', :tag => s.version.to_s }
  s.platform = :ios
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.preserve_paths = '**/*.*'
  s.ios.library = 'z'
  s.source_files = 'LearnStuff/**/*.m', 'LearnStuff/**/*.h'
  s.public_header_files = 'LearnStuff/**/*.h'
  s.vendored_library = 'LearnStuff/Classes/libSelligentMobile1.5.a'
  s.weak_framework = 'UserNotifications'


end
