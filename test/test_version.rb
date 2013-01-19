require "minitest/autorun"
require "minitest/given"

describe MiniTest::Given, :version do
  Given(:version)     { MiniTest::Given::VERSION }
  When(:low_version)  { "0.0.1alpha000" }
  When(:high_version) { "9999999.999999.9999" }
  Then { version > low_version }
  And  { version < high_version }
end
