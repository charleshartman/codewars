# maximum_and_mininum_difference.rb
# 6 kyu

# Given two array of integers(arr1, arr2). Your task is going to find a pair of
# numbers(an element in arr1, and another element in arr2), their difference is
# as big as possible(absolute value); Again, you should to find a pair of
# numbers, their difference is as small as possible. Return the maximum and
# minimum difference values by an array: [ max difference, min difference ]

# For example:

# Given arr1 = [3,10,5], arr2 = [20,7,15,8]
# should return [17,2] because 20 - 3 = 17, 10 - 8 = 2

# arr1 and arr2 contains only integers(positive, negative or 0);
# arr1 and arr2 may have different lengths, they always has at least one element
# All inputs are valid.

def max_and_min(arr1, arr2)
  result = []
  arr1.each { |num1| arr2.each { |num2| result << num1 - num2 } }
  arr2.each { |num1| arr1.each { |num2| result << num1 - num2 } }

  result.select { |n| n >= 0 }.minmax.reverse
end

p max_and_min([3, 10, 5], [20, 7, 15, 8]) == [17, 2]
p max_and_min([3], [20]) == [17, 17]
p max_and_min([3, 10, 5], [3, 10, 5]) == [7, 0]
p max_and_min([1, 2, 3, 4, 5], [6, 7, 8, 9, 10]) == [9, 1]

=begin

<-PEDAC->
problem:
  - find the smallest difference between a number in arr1 and arr2 and the
    greatest difference between a number in arr1 and arr2
  - return a two element array

input: two arrays
output: array
data structure: array

algorithm:
  - initialize (result) at []
  - get the max value of arr1 and the min value of arr2
  - get the max value of arr2 and the min value of arr2
  - push whichever is greater into the (result) array
  - do the same calculation but for min values instead of max
  - push whichever is smallest into the (result) array
  - return (result)

=end

# CW solution
# def max_and_min(arr1, arr2)
#   arr1.product(arr2).map { |a, b| (a-b).abs }.minmax.reverse
# end
