#
#  Be sure to run `pod spec lint DatePickerTextField.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "DatePickerTextField"
  s.version      = "1.0.2"
  s.summary      = "DatePickerTextField选择时间"
  s.description  = <<-DESC
  								 DatePickerTextField选择时间，快速选择
	DESC
  s.homepage     = "https://github.com/JavenZ/DatePickerTextField"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author       = { "JavenZ" => "1074472615@qq.com" }
  s.platform     = :ios
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/JavenZ/DatePickerTextField.git", :tag => "1.0.2" }
  s.source_files  = "DatePickerTextFieldDemo/DatePickerTextField/*.{h,m}"
  s.framework  = "UIKit"
end
