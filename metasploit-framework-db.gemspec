# -*- encoding: utf-8 -*-
# stub: metasploit-framework-db 4.11.3 ruby lib

Gem::Specification.new do |s|
  s.name = "metasploit-framework-db"
  s.version = "4.11.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Metasploit Hackers"]
  s.date = "2015-07-14"
  s.description = "Gems needed to access the PostgreSQL database in metasploit-framework"
  s.email = ["metasploit-hackers@lists.sourceforge.net"]
  s.homepage = "https://www.metasploit.com"
  s.licenses = ["BSD-3-clause"]
  s.rubygems_version = "2.4.3"
  s.summary = "metasploit-framework Database dependencies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["< 4.1.0", ">= 4.0.9"])
      s.add_runtime_dependency(%q<metasploit-credential>, ["= 1.0.0"])
      s.add_runtime_dependency(%q<metasploit_data_models>, ["= 1.2.5"])
      s.add_runtime_dependency(%q<metasploit-framework>, ["= 4.11.3"])
      s.add_runtime_dependency(%q<pg>, [">= 0.11"])
    else
      s.add_dependency(%q<activerecord>, ["< 4.1.0", ">= 4.0.9"])
      s.add_dependency(%q<metasploit-credential>, ["= 1.0.0"])
      s.add_dependency(%q<metasploit_data_models>, ["= 1.2.5"])
      s.add_dependency(%q<metasploit-framework>, ["= 4.11.3"])
      s.add_dependency(%q<pg>, [">= 0.11"])
    end
  else
    s.add_dependency(%q<activerecord>, ["< 4.1.0", ">= 4.0.9"])
    s.add_dependency(%q<metasploit-credential>, ["= 1.0.0"])
    s.add_dependency(%q<metasploit_data_models>, ["= 1.2.5"])
    s.add_dependency(%q<metasploit-framework>, ["= 4.11.3"])
    s.add_dependency(%q<pg>, [">= 0.11"])
  end
end
