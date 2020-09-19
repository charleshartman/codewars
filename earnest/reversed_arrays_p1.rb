# reversed_arrays_p1.rb - Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(arr)
  counter = 0
  (arr.length - 1).times do
    arr.insert(counter, arr.pop)
    counter += 1
  end

  arr
end

# Examples:

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

=begin

<-PEDAC->
problem:
  - reverse the given array in place, in other words, mutate the given array
  - do not use Array#reverse(!)

input: array
output: array
data structure: array

algorithm:
  - initialize (counter) at 0
  - iterate through given array (arr) (arr.length - 1) number of times
    - insert last element at index (counter)
    - increment counter
  - return (arr)
=end
