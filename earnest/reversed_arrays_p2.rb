# reversed_arrays_p2.rb - Reversed Arrays (Part 2)

# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

def reverse(arr)
  reversed = []
  index = -1
  counter = 0

  while counter < (arr.length)
    reversed << arr[index]
    index -= 1
    counter += 1
  end

  reversed
end

# Examples:

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

=begin

<-PEDAC->
problem:
  - return a new array that is the reverse of the given array without using the
    built in reverse(!) method and without mutating the given array

input: array
output: array
data structure: array 

algorithm:
  - initialize (reversed) to []
  - initialize counter 
  - iterate through given array,
  - return (reversed)

=end
