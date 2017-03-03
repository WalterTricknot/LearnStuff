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
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  s.default_subspec = 'SDK'

  s.subspec 'SDK' do |sdk|
    sdk.source_files = 'LearnStuff/Classes/include/*.h'
    sdk.preserve_paths = 'LearnStuff/Classes/libSelligentMobile1.5.a'
    sdk.vendored_library = 'LearnStuff/Classes/libSelligentMobile1.5.a'
    sdk.libraries = 'SelligentMobile1.5'
    sdk.weak_framework = 'UserNotifications'
  end

end
