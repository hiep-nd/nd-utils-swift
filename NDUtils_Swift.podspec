Pod::Spec.new do |s|
  s.name         = "NDUtils_Swift"
  s.version      = "0.0.4.1"
  s.summary      = "Utility for Foundation, UIKit,...."
  s.description  = <<-DESC
  NDUtils_Swift is a small utility framework for Foundation, UIKit,....
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-utils-swift.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
  #s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-utils-swift.git", :tag => "Pod-#{s.version}" }
  s.source_files  = "#{s.name}/*.{h,m,mm,swift}"
  s.public_header_files = "#{s.name}/*.h"
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'NDUtils_Swift/*.{h,m,mm,swift}'
    ss.dependency 'NDUtils/Core', '~> 0.0.4.1'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'NDUtils_Swift/Foundation/**/*.{h,m,mm,swift}'
    ss.dependency 'NDUtils_Swift/Core'
    ss.dependency 'NDUtils/Foundation', '~> 0.0.4.1'
  end
  
  s.subspec 'QuartzCore' do |ss|
    ss.source_files = 'NDUtils_Swift/QuartzCore/**/*.{h,m,mm,swift}'
    ss.dependency 'NDUtils_Swift/Core'
    ss.dependency 'NDUtils/QuartzCore', '~> 0.0.4.1'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'NDUtils_Swift/UIKit/**/*.{h,m,mm,swift}'
    ss.dependency 'NDUtils_Swift/Core'
    ss.dependency 'NDUtils/UIKit', '~> 0.0.4.1'
  end
  
end
