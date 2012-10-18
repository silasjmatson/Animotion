# -*- encoding: utf-8 -*-
require File.expand_path('../lib/Animotion/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Silas J. Matson"]
  gem.email         = ["silas@clearsightstudio.com"]
  gem.description   = "RubyMotion wrapper abstraction for UIView animations."
  gem.summary       = "RubyMotion wrapper abstraction for UIView animations."
  gem.homepage      = "https://github.com/silaj/Animotion"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "Animotion"
  gem.require_paths = ["lib"]
  gem.version       = Animotion::VERSION
end
