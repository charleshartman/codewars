# largest_product.rb
# 5 kyu

# Complete the greatestProduct method so that it'll find the greatest product
# of five consecutive digits in the given string of digits.

# The input string always has more than five digits.

def greatest_product(str)
  products = []
  digits = str.to_i.digits.reverse
  index = 0
  while index < (digits.length - 4)
    products << (digits[index..index + 4]).inject(:*)
    index += 1
  end

  products.max
end

# For example:
p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

=begin

input: string of numbers
output: integer
data structure: string, array, integer

rules:
  - greatest number produced by successive 5 digit product
  - input string always > 5 digits

algorithm:
  - initialize array to hold (products)
  - convert string to array of (digits)
  - iterate through digits array starting and index 0
  - push 5 consecutive digit products into products array until starting index 
    equals digits array length - 4, or index[-4]
  - determine and return max value in products array

=end

# completed in 30m... syntax
