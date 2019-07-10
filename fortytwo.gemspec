# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "fortytwo"
  spec.version       = "0.1.0"
  spec.authors       = ["Jeffrey van Hoven"]
  spec.email         = ["jeffrey.van.hoven@42.nl"]

  spec.summary       = "Documentation template for 42.nl open-source projects"
  spec.homepage      = "https://www.42.nl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
