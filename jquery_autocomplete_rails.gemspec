$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jquery_autocomplete_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jquery_autocomplete_rails"
  s.version     = JqueryAutocompleteRails::VERSION
  s.authors     = ["John Kamenik"]
  s.email       = ["jkamenik@gmail.com"]
  s.homepage    = "http://google.com"
  s.summary     = "Provides jQuery Autocomplete assets."
  s.description = "Wraps jQuery-Autocomplete in rails asset wrappers."

  s.files = Dir["{vendor,lib}/**/*", "MIT-LICENSE", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency 'jquery-rails', "~> 3.0.4"
end
