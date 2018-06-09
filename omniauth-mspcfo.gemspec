lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/mspcfo/version"

Gem::Specification.new do |gem|
  gem.authors       = ['Kevin Pheasey']
  gem.email         = ['kevin@kpsoftware.io']
  gem.description   = "An OmniAuth OAuth2 strategy for MSPCFO."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/mspcfo/omniauth-mspcfo"
  gem.licenses      = %w[MIT]

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-mspcfo"
  gem.require_paths = %w[lib]
  gem.version       = OmniAuth::Mspcfo::VERSION

  gem.add_runtime_dependency 'omniauth', '~> 1.2'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency "bundler", "~> 1.0"
end
