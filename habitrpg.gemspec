# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'habitrpg/version'

Gem::Specification.new do |spec|
  spec.name          = "habitrpg_api"
  spec.version       = Habitrpg::VERSION
  spec.authors       = ["Morgan Kesler"]
  spec.email         = ["keslerm@dasbiersec.com"]

  spec.summary       = "Ruby interface to the HabitRPG API."
  spec.description   = "This is a ruby interface to the HabitRPG API. It is currently under development so expect things to change. Use at your own risk"
  spec.homepage      = "https://github.com/keslerm/habitrpg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rest-client", "~> 1.8"
  spec.add_development_dependency "json", "~> 1.8"
end
