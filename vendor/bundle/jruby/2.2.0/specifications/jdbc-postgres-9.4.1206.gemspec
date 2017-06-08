# -*- encoding: utf-8 -*-
# stub: jdbc-postgres 9.4.1206 ruby lib

Gem::Specification.new do |s|
  s.name = "jdbc-postgres"
  s.version = "9.4.1206"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Sieger, Ola Bini, Karol Bucek and JRuby contributors"]
  s.date = "2016-02-05"
  s.description = "Install this gem `require 'jdbc/postgres'` and invoke `Jdbc::Postgres.load_driver` within JRuby to load the driver."
  s.email = ["nick@nicksieger.com", "ola.bini@gmail.com", "self@kares.org"]
  s.homepage = "http://github.com/jruby/activerecord-jdbc-adapter/tree/master/jdbc-postgres"
  s.licenses = ["BSD"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.4.8"
  s.summary = "JDBC driver for JRuby and PostgreSQL (used by ActiveRecord-JDBC)."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version
end
