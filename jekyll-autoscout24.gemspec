# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-autoscout24/version'

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

  spec.add_dependency "ox", "2.9.0"
  spec.add_dependency "liquid", "4.0.0"
  spec.add_dependency "jekyll", ENV["JEKYLL_VERSION"] ? "~> #{ENV["JEKYLL_VERSION"]}" : "~> 3.1"

  spec.add_development_dependency "gem-release", "1.0.0"
  spec.add_development_dependency "bundler", "1.16.1"
  spec.add_development_dependency "rake", "12.3.0"
  spec.add_development_dependency "minitest", "~> 5.11.3"
end
