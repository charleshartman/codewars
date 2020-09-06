# array_diff.rb
# 6 kyu

# Your goal in this kata is to implement a difference function, which subtracts
# one list from another and returns the result.

# It should remove all values from list a, which are present in list b.

# If a value is present in b, all of its occurrences must be removed
# from the other -> array_diff([1, 2], [1]) == [2]

# original
# def array_diff(arr1, arr2)
#   arr2.each { |val| arr1.delete(val) }
#   arr1
# end

#rethought/refactored
def array_diff(arr1, arr2)
  arr1.select { |val| val if !arr2.include?(val) }
end

p array_diff([1, 2], [1]) == [2]
p array_diff([1, 2, 2], [1]) == [2,2]
p array_diff([1, 2, 2], [2]) == [1]
p array_diff([1, 2, 2], []) == [1, 2, 2]
p array_diff([], [1,2]) == []

=begin

problem:
  - given two arrays, delete all elements in the first array that are identical
    to elements in the second array

input: two arrays
output: array
data structure: array

algorithm:
  - iterate through (arr2)
    - if value is included in (arr1)
      then delete value
  - return (arr1)

=end

# completed in 15m

=begin (cheeky CW)

def array_diff(arr1, arr2)
  arr1 - arr2
end

=end
