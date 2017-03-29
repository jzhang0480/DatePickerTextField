#
#  Be sure to run `pod spec lint DatePickerTextField.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "DatePickerTextField"
  s.version      = "1.0.0"
  s.summary      = "DatePickerTextField选择时间"
  s.description  = <<-DESC
  DatePickerTextField选择时间，快速选择
	DESC
  s.homepage     = "https://github.com/JavenZ/DatePickerTextField"
  s.license      = "MIT"
  s.author       = { "JavenZ" => "1074472615@qq.com" }
  s.platform     = :ios
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/JavenZ/DatePickerTextField.git", :tag => "1.0.0" }
  s.source_files  = "DatePickerTextFieldDemo/DatePickerTextField/*.{h,m}"
  s.framework  = "UIKit"
end
