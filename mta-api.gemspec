# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'mta-api'
  spec.version       = '0.8.0'
  spec.authors       = ['Michael Squitieri']
  spec.email         = ['michael.squitieri@gmail.com']
  spec.summary       = 'A Ruby wrapper of the NYC Metropolitan Transit Authority (MTA) Real-Time API.'
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/msquitieri/mta-api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty', '~> 0.13.7'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'faker', '~> 1.6'
  spec.add_development_dependency 'awesome_print', '~> 1.8'
end