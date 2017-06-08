$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mystatistics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mystatistics"
  s.version     = Mystatistics::VERSION
  s.authors     = ["smirnova"]
  s.email       = ["natasha_smir@bk.ru"]
  s.homepage    = ""
  s.summary     = "Summary of Mystatistics."
  s.description = "Description of Mystatistics."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "time_difference", "~> 0.5.0"
  s.add_dependency "chart-js-rails"
  s.add_development_dependency "activerecord-jdbcsqlite3-adapter"
end
