# rotation1.rb
# medium 1 - exercise1.rb - Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_number(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_string('scharle') == 'charles'
p rotate_number(51234) == 12345

=begin

problem:
  - move first element in given array to end of array
  - do NOT mutate given array
  - do NOT use rotate(!)

input: array
output : array
data structure: array

algorithm:
  - add elements at indices 1..-1 to element at index 0 and return

=end