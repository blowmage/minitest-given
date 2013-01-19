require "rubygems"
require "hoe"

Hoe.plugin :gemspec
Hoe.plugin :git
Hoe.plugin :minitest

Hoe.spec "minitest-given" do
  developer "Mike Moore", "mike@blowmage.com"

  self.summary     = "Given/When/Then for minitest"
  self.description = "Adds Given/When/Then built on top of minitest's spec DSL."
  self.urls        = ["http://blowmage.com/minitest-given"]

  self.history_file = "CHANGELOG.rdoc"
  self.readme_file  = "README.rdoc"
  self.testlib      = :minitest

  dependency "minitest", ">= 4.4.0"
  dependency "wrong", ">= 0.6.3"
end
