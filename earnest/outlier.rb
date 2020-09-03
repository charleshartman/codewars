# outlier.rb

# You are given an array (which will have a length of at least 3, but could be
# very large) containing integers. The array is either entirely comprised of
# odd integers or entirely comprised of even integers except for a single
# integer N. Write a method that takes the array as an argument and returns
# this "outlier" N.

def find_outlier(integers)
  odd = integers.select { |num| num.odd? }
  even = integers.select { |num| num.even? }

  odd.length == 1 ? odd[0] : even[0]
end

p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2
p find_outlier([2, 6, 8, 10, 3]) == 3
p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160

=begin

input: array
output: integer
data structure: integer, array

rules:
  - given an array of integers, all of which, with one exception, are either
    odd or even, return the exception
  - array will have at least 3 elements, and could be very large.

algorithm:
  - iterate over array, counting all odd integers
    - if count is > 1 then find even integer and return it
      else find odd integer and return it

=end

# completed in 15m
