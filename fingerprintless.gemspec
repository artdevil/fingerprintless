# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fingerprintless/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joost Diepenmaat"]
  gem.email         = ["j.diepenmaat@bluetools.nl"]
  gem.description   = "Use the rails image_tag without fingerprinting."
  gem.summary       = "Don't want to use fingerprinted filenames when you use <%= image_tag => on your rails website in production mode? Use fingerprintless."
  gem.homepage      = "https://github.com/bluetools/fingerprintless"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fingerprintless"
  gem.require_paths = ["lib"]
  gem.version       = Fingerprintless::VERSION
end
