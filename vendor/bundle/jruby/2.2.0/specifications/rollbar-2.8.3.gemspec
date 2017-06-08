# -*- encoding: utf-8 -*-
# stub: rollbar 2.8.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rollbar"
  s.version = "2.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rollbar, Inc."]
  s.date = "2016-03-09"
  s.description = "Easy and powerful exception tracking for Ruby"
  s.email = ["support@rollbar.com"]
  s.executables = ["rollbar-rails-runner"]
  s.files = ["bin/rollbar-rails-runner"]
  s.homepage = "https://rollbar.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Reports exceptions to Rollbar"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.14.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.0.0"])
      s.add_development_dependency(%q<girl_friday>, [">= 0.11.1"])
      s.add_development_dependency(%q<sucker_punch>, ["~> 2.0"])
      s.add_development_dependency(%q<sidekiq>, [">= 2.13.0"])
      s.add_development_dependency(%q<genspec>, [">= 0.2.8"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<resque>, [">= 0"])
      s.add_development_dependency(%q<delayed_job>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["< 11"])
      s.add_development_dependency(%q<redis>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_development_dependency(%q<oj>, ["~> 2.12.14"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.14.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.0.0"])
      s.add_dependency(%q<girl_friday>, [">= 0.11.1"])
      s.add_dependency(%q<sucker_punch>, ["~> 2.0"])
      s.add_dependency(%q<sidekiq>, [">= 2.13.0"])
      s.add_dependency(%q<genspec>, [">= 0.2.8"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<resque>, [">= 0"])
      s.add_dependency(%q<delayed_job>, [">= 0"])
      s.add_dependency(%q<rake>, ["< 11"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<oj>, ["~> 2.12.14"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.14.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.0.0"])
    s.add_dependency(%q<girl_friday>, [">= 0.11.1"])
    s.add_dependency(%q<sucker_punch>, ["~> 2.0"])
    s.add_dependency(%q<sidekiq>, [">= 2.13.0"])
    s.add_dependency(%q<genspec>, [">= 0.2.8"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<resque>, [">= 0"])
    s.add_dependency(%q<delayed_job>, [">= 0"])
    s.add_dependency(%q<rake>, ["< 11"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<oj>, ["~> 2.12.14"])
  end
end
