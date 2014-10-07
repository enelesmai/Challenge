require 'minitest/autorun'
require_relative 'polinomio'

##FOR TESTING###
###it returns an string
###puts Polinomio.new([-3,-4,1,0,6]) # => -3x^4-4x^3+x^2+6
###puts Polinomio.new([1,0,2]) # => x^2+2

class TestPolinomio < MiniTest::Unit::TestCase
  def test_is_string
  	assert_instance_of String, Polinomio.new([1,2,3])
  end
  def test_known_value_one
    assert_equal "-3x^4-4x^3+x^2+6", Polinomio.new([-3,-4,1,0,6])
  end
  def test_known_value_two
  	assert_equal "x^2+2", Polinomio.new([1,0,2])
  end
  def test_empty
  	assert_equal "", Polinomio.new([0,0,0])
  end
  def test_one_positive
  	assert_equal "1", Polinomio.new([1])
  end
  def test_one_negative
  	assert_equal "-1", Polinomio.new([-1])
  end
  def test_known_value_one_x_negative
  	assert_equal "-x^2+2", Polinomio.new([-1,0,2])
  end
  
end