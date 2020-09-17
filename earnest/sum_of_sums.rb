# sum_of_sums.rb - Sum of Sums

# Write a method that takes an Array of numbers and then returns the sum of
# the sums of each leading subsequence for that Array. You may assume that
# the Array always contains at least one number.

def sum_of_sums(arr)
  result = 0
  while arr.length > 0
    result += arr.sum
    arr.pop
  end
  result
end

# Examples:
p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin

<-PEDAC->
problem:
  - sum all digits in an array and all leading subsequences
  - all given arrays will have at least one number

input: array
output: integer
data structure: array, integer

algorithm:
  - initialize variable (result) at 0
  - loop through array while array.length is greater than 0
    - sum array contents
    - remove last element
    - return (result)

=end
