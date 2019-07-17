#
#  Be sure to run `pod spec lint FODLNA.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FODLNA"
  s.version      = "1.0"
  s.summary      = "Cast by DLNA"
  s.homepage     = "https://github.com/505god/FODLNA"

  s.license      = "MIT"
  s.author       = { "qcx" => "18915410342@126.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/505god/FODLNA.git" :tag => "v1.1" }
  s.source_files  = 'FODLNA/Classes/**/*.{h,m}'
  s.requires_arc = true
  s.library = 'libxml2'
end
