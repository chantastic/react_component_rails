$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "react_component_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "react_component_rails"
  s.version     = ReactComponentRails::VERSION
  s.authors     = ["Michael Chan"]
  s.email       = ["mijoch@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ReactComponentRails."
  s.description = "TODO: Description of ReactComponentRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
