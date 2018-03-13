# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/autoscout24/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-autoscout24"
  spec.version       = Jekyll::Autoscout24::VERSION
  spec.authors       = ["Enrico Caputo", "Pavel Tsurbeleu"]
  spec.email         = ["enricocaputo.1972@gmail.com", "pavel.tsurbeleu@me.com"]

  spec.summary       = "Jekyll plugin to integrate with AutoScout24"
  spec.description   = "A Jekyll plugin to transform AutoScout24's backup XML into a data file"
  spec.homepage      = "https://github.com/staticpagesio/jekyll-autoscout24"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|docker-compose)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
