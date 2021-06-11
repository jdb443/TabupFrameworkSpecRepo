#
# Be sure to run `pod lib lint TabUpFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TabUpFramework'
  s.version          = '0.9.4'
  s.summary          = 'The TabUpFramework library is for private use for apps utilizing the TabUp Backend System.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  The TabUpFramework library is for private use for apps utilizing the TabUp Backend System. This is meant to be used for individual restaurant apps
                       DESC

  s.homepage         = 'https://github.com/DiscoverPioneer/TabUpFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DiscoverPioneer' => 'phil@discoverpioneer.com' }
  s.source           = { :git => 'https://github.com/DiscoverPioneer/TabUpFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.2'
  s.swift_version = '5.0'
  s.source_files = 'TabUpFramework/Classes/**/*'
  
   s.resource_bundles = {
     'TabUpFramework' => [
     'TabUpFramework/Assets/*.xcassets',
     'TabUpFramework/Assets/Fonts/IBMPlexSans/*.ttf',
     'TabUpFramework/Classes/src/Storyboards/*/*.storyboard',
     'TabUpFramework/Classes/src/Views/Cells/*.xib'
     ]
   }
#   s.resources = "TabUpFramework/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'



s.static_framework = true
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

   s.dependency 'Alamofire', '~> 5.2.2'
   s.dependency 'Kingfisher' #https://github.com/onevcat/Kingfisher/wiki/Cheat-Sheet
   s.dependency 'Firebase/Core'
    s.dependency 'NVActivityIndicatorView'
    s.dependency 'OneSignal', '>= 2.11.2', '< 3.0'

   #Non-Default
   s.dependency 'SkyFloatingLabelTextField', '~> 3.8.0'
   s.dependency 'Cosmos', '~> 22.1'
   s.dependency 'Cache', '~> 5.3.0'
    s.dependency 'CardScan'
    s.dependency 'SwiftEntryKit', '1.2.6'
    s.dependency 'SPPermissions/Notification'
    s.dependency 'SPPermissions/Camera'
    s.dependency 'SPPermissions/Location'
    s.dependency 'SPPermissions/Contacts'
    s.dependency 'SPPermissions/Microphone'
    s.dependency 'SPPermissions/Tracking'
    s.dependency 'Firebase/Crashlytics'
   # Recommended: Add the Firebase pod for Google Analytics
   s.dependency 'Firebase/Analytics'
end
