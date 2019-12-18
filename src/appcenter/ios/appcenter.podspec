#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'appcenter'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://github.com/aloisdeniel/flutter_plugin_appcenter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Aloïs Deniel' => 'alois.deniel@outlook.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'AppCenter'
  s.platform = :ios, '8.0'
  s.frameworks = 'AppCenter', 'Security', 'SystemConfiguration' # plus other frameworks you use
  s.static_framework = true
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/AppCenter/iOS'
  }
end
