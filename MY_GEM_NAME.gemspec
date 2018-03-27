# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require '#MY_GEM_NAME#/version'

Gem::Specification.new do |gem|
  gem.name          = '#MY_GEM_NAME#'
  gem.version       = #MY_GEM_CLASS#::VERSION
  gem.authors       = ['Igor Rzegocki']
  gem.email         = ['igor@rzegocki.pl']
  gem.description   = ''
  gem.summary       = ''
  gem.homepage      = 'https://github.com/ajgon/#MY_GEM_NAME#.gem'

  gem.files         = Dir['lib/**/*']
  gem.test_files    = gem.files.grep(%r{^(test|spec|payment)/})
  gem.require_paths = ['lib']
end
