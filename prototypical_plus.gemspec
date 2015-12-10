$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "prototypical_plus/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "prototypical_plus"
  s.version     = PrototypicalPlus::VERSION
  s.authors     = ["Adam Phillips"]
  s.email       = ["aphillips@scholastic.co.uk"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PrototypicalPlus."
  s.description = "TODO: Description of PrototypicalPlus."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "prototypical", "~> 0.0.2"

  s.add_development_dependency "minitest-spec-rails", "~> 5.3"
  s.add_development_dependency "mocha", "~> 1.1"
  s.add_development_dependency "pry-byebug", "~> 3.3"
end
