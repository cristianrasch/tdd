require "minitest/autorun"

require_relative "../lib/integer_ext"

class FactorialTest < MiniTest::Unit::TestCase
  def test_factorial_1
    assert_equal 1, 1.factorial
  end
  
  def test_factorial_2
    assert_equal 2, 2.factorial
  end
  
  def test_factorial_5
    assert_equal 120, 5.factorial
  end
  
  def test_factorial_10
    assert_equal 3628800, 10.factorial
  end
end
