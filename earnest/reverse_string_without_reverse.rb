# reverse_string_without_reverse.rb

# write a method that takes a string as an argument and reverses the order
# of characters in the string. Do not use the String#reverse method.

def reverse_string(str)
  result = []
  counter = 0
  chars = str.chars
  while counter < str.length
    result << chars.pop
    counter += 1
  end

  result.join('')
end

p reverse_string('selrahc') == 'charles'
p reverse_string('test') == 'tset'
p reverse_string('Dystopian Hellscape') == "epacslleH naipotsyD"

=begin

problem:
  - reverse given string without using String#reverse(!)

input: string
output: string
data structure: string, array

algorithm:
  - initialize variable to hold (result) to ''
  - iterate through string
  - push return value of pop into new string
  - return new string

=end
