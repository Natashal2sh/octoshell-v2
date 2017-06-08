# -*- encoding: utf-8 -*-
# stub: maymay 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "maymay"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jan Bernacki"]
  s.date = "2012-12-10"
  s.description = "Abstract authorization solution for Rails."
  s.email = "releu@redstonelabs.cz"
  s.homepage = "http://github.com/redstonelabs/maymay"
  s.rubyforge_project = "maymay"
  s.rubygems_version = "2.4.8"
  s.summary = "Abstract authorization solution for Rails."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.9.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.9.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.9.0"])
  end
end
