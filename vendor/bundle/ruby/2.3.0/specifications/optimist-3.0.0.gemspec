# -*- encoding: utf-8 -*-
# stub: optimist 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "optimist"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ManageIQ/optimist/issues", "changelog_uri" => "https://github.com/ManageIQ/optimist/blob/master/History.txt", "source_code_uri" => "https://github.com/ManageIQ/optimist/" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["William Morgan", "Keenan Brock", "Jason Frey"]
  s.date = "2018-08-24"
  s.description = "Optimist is a commandline option parser for Ruby that just\ngets out of your way. One line of code per option is all you need to write.\nFor that, you get a nice automatically-generated help page, robust option\nparsing, command subcompletion, and sensible defaults for everything you don't\nspecify."
  s.email = "keenan@thebrocks.net"
  s.homepage = "http://manageiq.github.io/optimist/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Optimist is a commandline option parser for Ruby that just gets out of your way."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.4.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<chronic>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.4.3"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<chronic>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.4.3"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<chronic>, [">= 0"])
  end
end
