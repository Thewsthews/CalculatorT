# frozen_string_literal: true

source "https://rubygems.org"

# gem "rails"
# calculator.gemspec

Gem::Specification.new do |spec|
  spec.name          = "rust_calculator"
  spec.version       = "0.1.0"
  spec.authors       = ["Thewsthews"]
  spec.email         = ["etiegnim@gmail.com"]

  spec.summary       = "A Ruby calculator with Rust integration"
  spec.description   = "A simple calculator implemented in Ruby with core functionality in Rust for performance."
  spec.homepage      = "https://github.com/Thewsthews/CalculatorT"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files         = Dir['lib/**/*', 'ext/**/*', 'Cargo.toml', 'Rakefile', 'README.md']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/Rakefile"]

  spec.add_dependency "ffi", "~> 1.15"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake-compiler", "~> 1.2"
end