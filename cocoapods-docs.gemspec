# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_docs.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-docs"
  spec.version       = CocoapodsDocs::VERSION
  spec.authors       = ["Fabio Pelosin"]
  spec.email         = ["fabiopelosin@gmail.com"]
  spec.description   = %q{Simple gem which offers convenient access to the documentation of a Pod via cocoadocs.org.}
  spec.summary       = %q{Simple gem which offers convenient access to the documentation of a Pod via cocoadocs.org.}
  spec.homepage      = "https://github.com/irrationalfab/cocoapods-docs"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '2.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
