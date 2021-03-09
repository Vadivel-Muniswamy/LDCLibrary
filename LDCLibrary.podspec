Pod::Spec.new do |spec|

  spec.name         = "LDCLibrary"
  spec.version      = "0.0.3"
  spec.summary      = "This is the private library"

  spec.description  = "This is the private library to test the functionality of view from library to application and application to library"

  spec.homepage     = "https://github.com/Vadivel-Muniswamy"

  spec.license      = { :type => 'Apache License, Version 2.0'}

    spec.author    = "Vadivel-Muniswamy"
    spec.platform     = :ios, "10.0"
    spec.swift_version     = "5.0"
    spec.source       = { :git => "https://github.com/Vadivel-Muniswamy/LDCLibrary.git", :tag => "#{spec.version}" }
    spec.source_files  = "LDCLibrary/**/*.{h,m,swift}"
    spec.requires_arc = true
    spec.resources = ["LDCLibrary/**/*.lproj/LDCLibLocalization.strings"]
end
