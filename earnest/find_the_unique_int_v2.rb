# find_the_unique_int_v2.rb

# Given an array of integers, find the unique integer.
# It’s guaranteed that the array will contain only one unique integer.
# The return value should be the unique integer, or nil if the array does not 
# contain a unique integer.

def find_unique(arr)
  result = nil
  arr.each do |int|
    result = int if arr.count(int) == 1
  end

  result
end

=begin

input: array
output: integer or nil
data structure: array, integer
rules: identify the unique value within an array of integers, return nil if 
       there is no unique integer or if array is empty
algorithm:
  - initialize a (result) variable to nil
  - iterate through the array
  - count each occurance of eack element
  - assign element to result if occurrences == 1
  - return result

=end

p find_unique([1, 1, 5, 2, 2, 2, 3, 3]) == 5
p find_unique([7]) == 7
p find_unique([]) == nil
p find_unique([1, 1, 1, 2, 2]) == nil
p find_unique([-50, -50, -4, 0, 0, 1, 1, 2, 2, 87, 87]) == -4