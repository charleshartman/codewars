# find_the_unique_int.rb

# Given an array of integers, find the unique integer.
# It’s guaranteed that the array will contain only one unique integer.
# The return value should be the unique integer, or nil if the array does not contain a unique integer.

def find_unique(arr)
  result = nil
  return nil if arr == []

  (0..arr.max).each do |int|
    if arr.count(int) == 1
      result = int
    end
  end
  result
end

=begin

input: array of integers
output: single integer or nil (if condition is not met)
rules: return the integer that appears only once
data structure: integers, array
algorithm:
  - initialize variable for result (result)
  - return nil if array is empty
  - iterate from 0 to the maximum value integer in the given array
  - if count equals 1 then assign to result
  - else return nil
  - return result

=end


p find_unique([1, 1, 5, 2, 2, 2, 3, 3]) == 5
p find_unique([7]) == 7
p find_unique([]) == nil
p find_unique([1, 1, 1, 2, 2]) == nil
