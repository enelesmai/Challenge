Code Challenge
=========



Build a polynomial equation from an array of numbers.

Rules:
--
- if a coefficient is 1, it doesn't get printed
- if a coefficient is negative, you have to display something like "-2x^3", not "+-2x^3"
- if a coefficient is 0, nothing gets added to the output
- for x^1 the ^1 part gets omitted
- x^0 == 1, so we don't need to display it


Examples:
--
Polynomial.new([-3,-4,1,0,6]) # => -3x^4-4x^3+x^2+6

Polynomial.new([1,0,2]) # => x^2+2

