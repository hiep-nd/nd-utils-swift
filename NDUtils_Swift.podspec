Pod::Spec.new do |s|
s.name         = "NDUtils_Swift"
  s.version      = "0.0.4"
  s.summary      = "Utility for Foundation, UIKit,...."
  s.description  = <<-DESC
  NDUtils_Swift is a small utility framework for Foundation, UIKit,....
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-utils-swift.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-utils-swift.git", :tag => "Pod-#{s.version}" }
  s.source_files  = "NDUtils_Swift/**/*.{h,m,mm,swift}"
  s.public_header_files = "NDUtils_Swift/**/*.h"
  s.header_mappings_dir = 'NDUtils_Swift'
  s.dependency 'NDUtils', '~> 0.0.4'
end
