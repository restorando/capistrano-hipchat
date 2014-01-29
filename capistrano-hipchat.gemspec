# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/hipchat/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-hipchat"
  spec.version       = Capistrano::Hipchat::VERSION
  spec.authors       = ["Restorando"]
  spec.email         = ["dev@restorando.com"]
  spec.description   = %q{Notify to hipchat about deployments}
  spec.summary       = %Q{Notifies in a hipchat room about a new deployment showing the git log\nfor the latests commits included in the current deploy.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
