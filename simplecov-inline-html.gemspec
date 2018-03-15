$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "simplecov-inline-html/version"

Gem::Specification.new do |gem|
  gem.name        = "simplecov-inline-html"
  gem.version     = SimpleCov::Formatter::InlineHTMLFormatter::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Jon Rowe"]
  gem.email       = ["hello@jonrowe.co.uk"]
  gem.homepage    = "https://github.com/JonRowe/simplecov-inline-html"
  gem.description = %(Inline HTML formatter for SimpleCov code coverage tool.)
  gem.summary     = gem.description
  gem.license     = "MIT"

  gem.required_ruby_version = "~> 2.4"
  gem.add_development_dependency "bundler", "~> 1.9"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
