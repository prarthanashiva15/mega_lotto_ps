# coding: utf-8
#!/usr/bin/env ruby
require_relative "../mega_lotto_ps/lib/mega_lotto_ps/drawing"
lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mega_lotto_ps/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "mega_lotto_ps"
  spec.version       = MegaLottoPs::VERSION
  spec.authors       = ["Prarthana Shiva"]
  spec.email         = ["prarthana.shiva@castandcrew.com"]

  spec.summary       = "Mega Lotto"
  spec.description   = "Algorithm to generate 5 random lottery numbers"
  spec.homepage      = "https://github.com/prarthanashiva15/mega_lotto_ps"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
