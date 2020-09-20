# difference_of_2.rb
# 6 kyu

# The objective is to return all pairs of integers from a given array of
# integers that have a difference of 2.

# The result array should be sorted in ascending order of values.

# Assume there are no duplicate integers in the array. The order of the
# integers in the input array should not matter.

# Examples
# [1, 2, 3, 4]  should return [[1, 3], [2, 4]]
# [4, 1, 2, 3]  should also return [[1, 3], [2, 4]]
# [1, 23, 3, 4, 7] should return [[1, 3]]
# [4, 3, 1, 5, 6] should return [[1, 3], [3, 5], [4, 6]]

def twos_difference_orig(arr)
  arr.combination(2).to_a.select { |sub| (sub[0] - sub[1]).abs == 2 }.map(&:sort).sort
end

def twos_difference(arr)
  arr.sort.combination(2).select { |a, b| (b - a) == 2 }
end

p twos_difference([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
p twos_difference([0, 3, 1, 4]) == [[1, 3]]
p twos_difference([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
p twos_difference([3, 1, 6, 4]) == [[1, 3], [4, 6]]
p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]]
p twos_difference([1, 4, 7, 10]) == []
p twos_difference([]) == []

=begin

<-PEDAC->
problem:
  - return a new array made up of all pairs of elements from given array for 
    which the difference between the paid is 2.

input: array
output: array of two element subarrays
data structure: array

algorithm:
  - initialize variable (pairs) and assign the result of determining all 
    two element combinations from given array, converted to array
  - select all subarrays for which the difference between the two elements is 2
  - sort each subarray
  - sort parent array
  - return pairs

=end

# completed in 20m

