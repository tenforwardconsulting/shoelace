# coding: utf-8
require File.expand_path('../lib/shoelace/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "shoelace"
  spec.version       = Shoelace::VERSION
  spec.authors       = ["Mark Norman"]
  spec.email         = ["mark@tenforwardconsulting.com"]

  spec.summary       = %q{Microclasses for your enjoyment}
  spec.homepage      = "https://github.com/tenforwardconsulting/shoelace"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "compass-rails"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
