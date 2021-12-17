#
# Always run `pod lib lint MonoDylib.podspec' before pushing to git
# Syntax: https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MonoDylib'
  s.version          = '0.1.0'
  s.summary          = 'This pod contains binaries of several MonoDylib, such as MarketplaceMonoDylib'
  s.description      = <<-DESC
Monodylib is a single framework that contains multiple libraries and expose them to user.
                       DESC
  s.homepage         = 'https://github.com/annomusa/MonoDylib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'annomusa' => 'annomusa.af@gmail.com' }

  s.source           = { :http => "https://github.com/annomusa/MonoDylib/releases/download/#{s.version.to_s}/MonoDylib.zip" }

  s.ios.deployment_target = '11.0'

  s.default_subspec  = 'Marketplace'

  s.subspec 'Marketplace' do |sc|
    sc.vendored_framework = 'MonoDylib/Marketplace/MarketplaceMonoDylib.xcframework'
    sc.user_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(PODS_XCFRAMEWORKS_BUILD_DIR)/MonoDylib/Marketplace/MarketplaceMonoDylib.framework/Modules'
    }
  end

end
