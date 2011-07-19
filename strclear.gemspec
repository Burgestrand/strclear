# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Kim Burgestrand"]
  gem.email         = ["kim@burgestrand.se"]
  gem.summary       = 'String#clear!'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "strclear"
  gem.require_paths = ['lib']
  gem.version       = '1.0.0'
  gem.extensions    << 'ext/extconf.rb'
  gem.require_paths << 'ext'
end
