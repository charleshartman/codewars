# multiplicative_average.rb - Multiplicative Average

# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

def show_multiplicative_average(arr)
  ma = (arr.reduce(:*) / arr.length.to_f)
  puts "The result is #{format('%.3f', ma)}"
end

# Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

=begin

<-PEDAC->
problem:
  - get the product of multiplying all the the numbers in the given array
    and dive by length of array and round to 3 decimal places

input: array
output: float
data structure: array, integer, float 

algorithm:
  - use reduce to get product then divide by array length converted to float
  - output string with result formatting number to 3 decimals

=end
