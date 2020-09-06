# mean_square_error.rb
# 5 kyu

# Complete the function that:

# accepts two integer arrays of equal length

# compares the value each member in one array to the corresponding member
# in the other

# squares the absolute value difference between those two values

# and returns the average of those squared absolute value difference between
# each member pair.

def solution(arr1, arr2)
  diffs = []
  index = 0
  while index < arr1.length
    diffs << (arr1[index] - arr2[index])**2
    index += 1
  end
  diffs.sum / diffs.length.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1

=begin

problem:
  - operate on each value pair formed from taking the value at the same index of
    two separate arrays, each with the same number of elements
  - find the difference in the pair and then square it
  - then return the average of all of all the preceding squares
  - so, subtract and square each pair, add all the results and divide by the
    num of elements in each array

input: two arrays with the same number of elements
output: integer or float
data structure: array, integer

algorithm:
  - initialize variable (diffs) to hold the squared differences
  - initialize variable (index) for counter
  - use a loop and counter (index) based on length of the given arrays
  - interate length number of times, diff and square each element pair from 
    same index in each given array
    - push each result to (diffs) array
  - return average of elements in the (diffs) array as float

=end

# completed in 25m
