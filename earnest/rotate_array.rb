# rotate_array.rb

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

=begin

<-PEDAC->
problem:
  - return a new array with the first element in the given array moved to last
    element in the new array
  - do not mutate the given array
  - do not use built-in rotate(!) method

input: array
output: array
data structure: array

algorithm:
  - return array index [1..-1] added to array index 0

=end
