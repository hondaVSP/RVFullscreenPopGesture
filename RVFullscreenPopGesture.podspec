#
# Be sure to run `pod lib lint RVFullscreenPopGesture.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RVFullscreenPopGesture'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RVFullscreenPopGesture.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cai_yh/RVFullscreenPopGesture'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cai_yh' => 'cai_yh@reachauto.com' }
  s.source           = { :git => 'https://github.com/cai_yh/RVFullscreenPopGesture.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  s.source_files = 'RVFullscreenPopGesture/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RVFullscreenPopGesture' => ['RVFullscreenPopGesture/Assets/*.png']
  # }

  s.public_header_files = 'RVFullscreenPopGesture/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'FDFullscreenPopGesture'
  s.dependency 'YYKit'
  
end
