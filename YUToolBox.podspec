#
# Be sure to run `pod lib lint YUToolBox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YUToolBox'
  s.version          = '0.0.0.1'
  s.summary          = 'YUToolBox'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  YUToolBox
                       DESC

  s.homepage         = 'https://github.com/Geforceyu/YUToolBox'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Geforceyu' => 'geforceyu@outlook.com' }
  s.source           = { :git => 'https://github.com/Geforceyu/YUToolBox.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.subspec 'UI' do |bs|
    bs.dependency 'YUToolBox/Category'
    bs.dependency 'Masonry', '1.1.0'
    bs.source_files = 'YUToolBox/Classes/UI/*.{h,m}'
  end
  
  s.subspec 'Category' do |bs|
    bs.source_files = 'YUToolBox/Classes/Category/*.{h,m}'
  end
  # s.resource_bundles = {
  #   'YUToolBox' => ['YUToolBox/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  
end
