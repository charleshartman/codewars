# unique_in_order.rb

# Implement the function unique_in_order which takes as argument a sequence and
# returns a list of items without any elements with the same value next to each
# other and preserving the original order of elements.

# def unique_in_order(input)
#   return [] if input.empty?
#   return input.squeeze.chars if input.is_a?(String)
#   return input.join.squeeze.chars if input.is_a?(Array) && input.last.is_a?(String)
# 
#   input.join.squeeze.to_i.digits.reverse
# end

def unique_in_order(input)
  case
  when input.empty? then []
  when input.is_a?(String) then input.squeeze.chars
  when input.is_a?(Array) && input.last.is_a?(String) then input.join.squeeze.chars
  else input.join.squeeze.to_i.digits.reverse
  end
end

# For example:
p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1, 2, 2, 3, 3])   == [1, 2, 3]

=begin

<-PEDAC->
problem:
  - remove successive duplicate characters within a string or array
  - return new array

input: string or array
output: array
data structure: array 

algorithm:
  - if given input is array, convert to string and squeeze
  - iterate through array with index, delete_if element is equal to 
    element[idx + 1]
  - return (unique)

=end
