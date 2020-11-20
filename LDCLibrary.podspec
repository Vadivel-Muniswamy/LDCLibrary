Pod::Spec.new do |spec|

  spec.name         = "LDCLibrary"
  spec.version      = "0.0.1"
  spec.summary      = "This is the private library"

  spec.description  = "This is the private library to test the functionality of view from library to application and application to library"

  spec.homepage     = "https://github.com/Vadivel-Muniswamy"

  spec.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
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

    spec.author    = "Vadivel-Muniswamy"
    spec.platform     = :ios, "10.0"
    spec.swift_version     = "5.0"
    spec.source       = { :git => "https://github.com/Vadivel-Muniswamy/LDCLibrary.git", :tag => "#{spec.version}" }
    spec.source_files  = "LDCLibrary/**/*.{h,m,swift}"
    spec.requires_arc = true
end
