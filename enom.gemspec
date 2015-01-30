# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enom/version'

Gem::Specification.new do |spec|
  spec.name = "enom"
  spec.version = Enom::VERSION
  spec.authors = ["James Miller", "Jeremy Woertink"]
  spec.email = ["bensie@gmail.com", "jeremywoertink@gmail.com"]
  spec.summary = %q{Ruby wrapper for the Enom API}
  spec.description = %q{Enom is a Ruby wrapper and command line interface for portions of the Enom domain reseller API.}
  spec.homepage = "http://github.com/bensie/enom"
  spec.license = "MIT"

  spec.has_rdoc = false
  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.default_executable = "enom"
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.0"
  spec.add_dependency "public_suffix", "~> 1.4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
