#
#  Be sure to run `pod spec lint NHLinearShadow.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name           = "NHLinearShadow"
  s.version        = "0.0.1"
  s.summary        = "Creates shadow image overlays."
  s.description    = "NHLinearShadow is used to create shadow image overlays, based on a UIColor or on image average color."
  s.homepage       = "https://github.com/nthegedus/NHLinearShadow"
  s.license        = 'MIT'
  s.author         = { "Nathan Hegedus" => "nathan@startapps.com.br" }
  s.platform       = :ios, '5.0'
  s.source         = { :git => "https://github.com/nthegedus/NHLinearShadow", :tag => "0.0.1" }
  s.source_files   = 'UIImageView+NHLinearShadow/*.{h,m}'
  #s.requires_arc = true
end
