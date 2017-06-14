# coding: utf-8
Gem::Specification.new do |s|  
  s.name        = 'xa-clients'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Don Kelly"]
  s.email       = ["karfai@gmail.com"]
  s.summary     = "Various REST API clients"
  s.description = "Various REST API clients"

  s.add_runtime_dependency "multi_json", "~> 1.11" 
  s.add_runtime_dependency "faraday"
  s.add_runtime_dependency "faraday_middleware"

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'fuubar'

  s.files        = Dir.glob("{bin,lib}/**/*")
  s.require_path = 'lib'
end  
