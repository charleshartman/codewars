# power.rb
# 5 kyu

# Create a method called "power" that takes two integers and returns the value
# of the first argument raised to the power of the second. Return nil if the
# second argument is negative.

# Note: The ** operator has been disabled.

def power(base, exponent)
  return nil if exponent.negative?
  return 1 if exponent == 0

  product = []
  1.upto(exponent) { product << base }
  product.inject(:*)
end

# Examples:
p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16

=begin

input: two integers, representing base & exponent
output: integer
data structure: integer, array

rules:
  - return nil if exponent is negative
  - multiply base times itself exponent times
  - do not use ** operator

algorithm:
  - guard clause, check for (negative?) exponent, return nil if so
  - create array object (product) with exponent number of base elements
  - get the product of multiplying all of the elements in the array
  - return that result

=end

# completed in 13m
