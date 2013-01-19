require "minitest/autorun"
require "minitest/given"

describe MiniTest::Given do

  context "assertions" do
    Given { }
    When { }
    Then { assert_equal 1, 1 }
    And  { assert_operator 1, :>, 0.5 }
    And  { assert 1 < 1.5, "1 is less than 1.5, right? RIGHT?" }
  end

  context "expectations" do
    Given { }
    When { }
    Then { 1.must_equal 1 }
    And  { 1.must_be :>, 0.5 }
    And  { 1.must_be :<, 1.5 }
  end

  context "implicit" do
    Given { }
    When { }
    Then { 1 == 1 }
    And  { 1 > 0.5 }
    And  { 1 < 1.5 }
  end

end
