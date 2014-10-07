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