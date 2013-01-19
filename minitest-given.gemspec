# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-given"
  s.version = "0.1.pre.20130118205038"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Moore"]
  s.date = "2013-01-19"
  s.description = "Adds Given/When/Then built on top of minitest's spec DSL."
  s.email = ["mike@blowmage.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", "CHANGELOG.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "lib/minitest-given.rb", "lib/minitest/given.rb", "minitest-given.gemspec", "test/test_assertions.rb", "test/test_comparison.rb", "test/test_version.rb", ".gemtest"]
  s.homepage = "http://blowmage.com/minitest-given"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "minitest-given"
  s.rubygems_version = "1.8.23"
  s.summary = "Given/When/Then for minitest"
  s.test_files = ["test/test_assertions.rb", "test/test_comparison.rb", "test/test_version.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, [">= 4.4.0"])
      s.add_runtime_dependency(%q<wrong>, [">= 0.6.3"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.4"])
    else
      s.add_dependency(%q<minitest>, [">= 4.4.0"])
      s.add_dependency(%q<wrong>, [">= 0.6.3"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.4"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 4.4.0"])
    s.add_dependency(%q<wrong>, [">= 0.6.3"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.4"])
  end
end
