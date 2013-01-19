require "minitest/autorun"
require "minitest/given"

describe MiniTest::Given do

  Context :comparison do
    Given(:a) { 1 }

    Context "equals" do
      When(:b) { 1 }
      Then { a == b }
    end

    Context "greater than" do
      When(:b) { 0.5 }
      Then { a > b }
    end

    Context "less than" do
      When(:b) { 1.5 }
      Then { a < b }
    end
  end

end
