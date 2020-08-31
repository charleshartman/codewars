# minimum_number.rb
# 6 kyu

# Given a List [] of n integers , find minimum mumber to be inserted in a list,
# so that sum of all elements of list should equal the closest prime number.

# List size is at least 2.
# List's numbers will only positives (n > 0).
# Repitition of numbers in the list could occur.
# The newer list's sum should equal the closest prime number.

require 'prime'

def minimum_number(numbers)
  next_sum = numbers.sum
  next_sum += 1 until next_sum.prime?
  next_sum - numbers.sum
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

=begin

input: array of integers, at least 2
output: integer
data structure: integer, array

rules:
  - return the number that needs to be added to the array such that when the
    array is summed the result is the next prime number

algorithm:
  - find sum of current array and assign to (initial_sum)
  - initialize (next_sum) equal to (initial sum)
  - iterate from next_sum += 1 until next_sum is a prime number
  - find the difference between (next_sum) and (initial_sum) = (add_to_array)
  - return add_to_array

=end

# completed in 15m
