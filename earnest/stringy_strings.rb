# stringy_strings.rb - Stringy Strings

# Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s, always starting with 1. The length of
# the string should match the given integer.

def stringy(num)
  num.odd? ? '10' * (num / 2) + '1' : '10' * (num / 2)
end


# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.

=begin

<-PEDAC->
problem:
  - build a string that is given number characters long with alternating
    1s and 0s

input: integer
output: string
data structure: string, integer 

algorithm:
  - initialize (result) to ''
  - execute conditional based on odd or even number
    - if even push half of given number worth of '10' into (result)
    - if odd puch half of given number worth of '10' + '1' into (result)
  - return (result)

=end
