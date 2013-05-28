# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'will_sortate/version'

Gem::Specification.new do |spec|
  spec.name          = "will_sortate"
  spec.version       = WillSortate::VERSION
  spec.authors       = ["Nicola Racco"]
  spec.email         = ["nicola@mikamai.com"]
  spec.description   = %q{WillSortate is a sorting engine for Rails 3, useful to give your views the power to sort collections}
  spec.summary       = %q{A sorting engine plugin for Rails 3}
  spec.homepage      = "https://github.com/mikamai/kaminari"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'rails', '>= 3.0.0'
end
