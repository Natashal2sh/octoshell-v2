# -*- encoding: utf-8 -*-
# stub: clbustos-rtf 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "clbustos-rtf"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Claudio Bustos"]
  s.date = "2012-01-05"
  s.description = "The RTF library provides a pure Ruby set of functionality that can be used to\nprogrammatically create RTF documents. The main aim in developing this library\nis to ease the complexity involved in assembling RTF documents although some\nconsideration has also been given to generating documents that are easier to\nmanually interpret too.\n\nThis library does not include functionality for parsing RTF documents. Nor does\nthe library claim to provide extensive coverage of the RTF specification. The\nlibrary was developed mostly with reference to the RTF Pocket Guide by Sean M.\nBurke and some reference to the RTF specification itself. The introduction to\nthe RTF Pocket Guide states that the book covers version 1.7 of the RTF\nspecification so I guess, as this was the primary source, that this is the\nversion that the library covers too. Finally, no consideration was given to\nmaking the functionality within the library thread safe.\n\nIn creating this library I set out to make it reasonably easy to create RTF\ndocuments in code. Having said that I'm certain that it is possible to generate\ninvalid RTF documents with this library."
  s.email = ["clbustos_at_gmail.com"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt"]
  s.homepage = "https://github.com/clbustos/rtf"
  s.rdoc_options = ["--main", "README.txt"]
  s.rubyforge_project = "clbustos-rtf"
  s.rubygems_version = "2.4.8"
  s.summary = "The RTF library provides a pure Ruby set of functionality that can be used to programmatically create RTF documents"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 0"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
    else
      s.add_dependency(%q<hoe>, [">= 0"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 0"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
  end
end
