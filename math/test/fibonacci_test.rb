require "minitest/autorun"

require_relative "../lib/integer_ext"

class FibonacciTest < MiniTest::Unit::TestCase
  def test_fib_0
    assert_equal 0, 0.fib
  end
  
  def test_fib_1
    assert_equal 1, 1.fib
  end
  
  def test_fib_2
    assert_equal 1, 2.fib
  end
  
  def test_fib_3
    assert_equal 2, 3.fib
  end
  
  def test_fib_4
    assert_equal 3, 4.fib
  end
  
  def test_fib_40
    assert_equal 102334155, 40.fib
  end
end
