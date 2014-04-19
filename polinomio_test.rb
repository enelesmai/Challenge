require 'minitest/autorun'

class Polinomio
	def initialize(coefficients)
		@coefficients = coefficients
	end

	def self.new(coefficients)
		@coefficients = coefficients
		@polinomioParsed = String.new
		@exp = @coefficients.length-1

			for i in @coefficients
				if i!=0 then #if coefficient is 0 nothing gets added to the output

					#setting sign
					if (i>0) and (@exp!=@coefficients.length-1)
						@polinomioParsed << "+"
					elsif @exp!=0 and i==-1
						@polinomioParsed << "-"
					end

					#coefficient
					if (@exp==0 and i==1)  or (@exp==0 and i==-1) or (i!=1 and i!=-1)
						@polinomioParsed << "#{i}"
					end

					#exponential
					if @exp > 1 then
						@polinomioParsed << "x^#{@exp}"
					elsif @exp == 1 then 
						@polinomioParsed << "x"
					end

				end
				@exp-=1
			end
		
		return @polinomioParsed
	end
end

##puts Polinomio.new([1,2,3,4,5]) 


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