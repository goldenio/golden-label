# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'golden/label/version'

Gem::Specification.new do |spec|
  spec.name          = 'golden-label'
  spec.version       = Golden::Label::VERSION
  spec.authors       = ['Tse-Ching Ho']
  spec.email         = ['tsechingho@gmail.com']
  spec.description   = %q{label.css is a stylesheet providing an easy way to label html elements. This gem integrates label.css with Rails asset pipeline for easy of use.}
  spec.summary       = %q{Integrate label.css with Rails asset pipeline}
  spec.homepage      = 'https://github.com/goldenio/golden-label'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.0'
  spec.add_dependency 'sass-rails', '>= 3.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
