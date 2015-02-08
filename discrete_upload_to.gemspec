# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discrete_upload_to/version'

Gem::Specification.new do |spec|
  spec.name          = "discrete_upload_to"
  spec.version       = DiscreteUploadTo::VERSION
  spec.authors       = ["Anuj Dhanju"]
  spec.email         = ["anujdhanju@gmail.com"]
  spec.summary       = %q{Discrete file upload with ajax}
  spec.description   = %q{Use any where and upload file with ajex. No need of any form.}
  spec.homepage      = "https://github.com/anuj-dhanju/discrete_upload_to"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
