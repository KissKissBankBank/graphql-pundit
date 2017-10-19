# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql-pundit/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql-pundit'
  spec.version       = GraphQL::Pundit::VERSION
  spec.authors       = ['Ontohub Core Developers']
  spec.email         = ['ontohub-dev-l@ovgu.de']

  spec.summary       = 'Pundit authorization support for graphql'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/ontohub/graphql-pundit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'graphql', '>= 1.6.4', '< 1.8.0'
  spec.add_dependency 'pundit', '~> 1.1.0'

  spec.add_development_dependency 'pry', '~> 0.11.0'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'simplecov', '~> 0.15.1'
  spec.add_development_dependency 'codecov', '~> 0.1.10'
end
