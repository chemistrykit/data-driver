# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data-driver/version'

Gem::Specification.new do |spec|
  spec.name          = 'data-driver'
  spec.version       = DataDriver::VERSION
  spec.authors       = ['Dave Haeffner']
  spec.email         = ['dhaeffner@gmail.com']
  spec.summary       = %q{See README.txt for details.}
  spec.description   = %q{A simple way to consume CSV and XLSX test data for use in your tests.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rubyXL', '~> 3.2.3'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
