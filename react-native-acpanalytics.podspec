
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-acpanalytics"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/adobe/react-native-acpanalytics"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = "Adobe"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/adobe/react-native-acpanalytics", :tag => "v1.0.1" }

# Platform dependencies
 

  s.vendored_libraries = "ios/libs/libACPAnalytics_iOS.a"

  s.requires_arc = true
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"

end

  