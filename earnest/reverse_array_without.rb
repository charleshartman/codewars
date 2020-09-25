# reverse_array_without.rb

# reverse given array without using Ruby's built in 'reverse' or 'reverse!'
# methods

def raw(arr)
  counter = arr.length
  result = []
  while counter > 0
    result << arr[counter - 1]
    counter -= 1
  end
  p result
end

p raw(['s', 'e', 'l', 'r', 'a', 'h', 'c']) == ["c", "h", "a", "r", "l", "e", "s"]
p raw([9, 0, 2, 1, 0]) == [0, 1, 2, 0, 9]

=begin

<-PEDAC->
problem:
  - reverse the given array without using reverse(!)
  - do NOT mutate the given array

input: array
output: array
data structure: array

algorithm:
  - initialize counter to length of array
  - initialize (result) to []
  - loop while counter is > 0
    - push arr[counter - 1] into (result)
    - increment counter - 1
  - return (result)

=end
