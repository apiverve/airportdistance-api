Pod::Spec.new do |s|
  s.name             = 'APIVerveAirportDistance'
  s.version          = '1.2.3'
  s.summary          = 'Airport Distance calculates the great-circle distance between two airports, plus estimated travel time, using their 3-letter IATA codes.'
  s.description      = <<-'DESC'
Airport Distance calculates the great-circle distance between two airports, plus estimated travel time, using their 3-letter IATA codes. It provides route distance in miles and kilometers plus estimated flight duration.

This iOS/macOS SDK provides a convenient way to access the Airport Distance from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/airportdistance?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/airportdistance-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveAirportDistance/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
