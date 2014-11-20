# -*- encoding: utf-8 -*-
# stub: metasploit-framework-full 4.10.1.pre.dev ruby lib

Gem::Specification.new do |s|
  s.name = "metasploit-framework-full"
  s.version = "4.10.1.pre.dev"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Metasploit Hackers"]
  s.date = "2014-11-17"
  s.description = "Gems needed to access the PostgreSQL database in metasploit-framework"
  s.email = ["metasploit-hackers@lists.sourceforge.net"]
  s.homepage = "https://www.metasploit.com"
  s.licenses = ["BSD-3-clause"]
  s.rubygems_version = "2.4.3"
  s.summary = "metasploit-framework with all optional dependencies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<metasploit-framework>, ["= 4.10.1.pre.dev"])
      s.add_runtime_dependency(%q<metasploit-framework-db>, ["= 4.10.1.pre.dev"])
      s.add_runtime_dependency(%q<metasploit-framework-pcap>, ["= 4.10.1.pre.dev"])
    else
      s.add_dependency(%q<metasploit-framework>, ["= 4.10.1.pre.dev"])
      s.add_dependency(%q<metasploit-framework-db>, ["= 4.10.1.pre.dev"])
      s.add_dependency(%q<metasploit-framework-pcap>, ["= 4.10.1.pre.dev"])
    end
  else
    s.add_dependency(%q<metasploit-framework>, ["= 4.10.1.pre.dev"])
    s.add_dependency(%q<metasploit-framework-db>, ["= 4.10.1.pre.dev"])
    s.add_dependency(%q<metasploit-framework-pcap>, ["= 4.10.1.pre.dev"])
  end
end
