# digital_root.rb

=begin

Digital root is the recursive sum of all the digits in a number.

Given n, take the sum of the digits of n. If that value has more than one
digit, continue reducing in this way until a single-digit number is produced.
This is only applicable to the natural numbers.

Examples

    16  -->  1 + 6 = 7
   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

=end

def digital_root(n)
  n = n.digits.inject(:+) while n >= 10
  n
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2

# input: integer
# output: integer
# data structure: arrays
# algorithm:
#   - initialize new array (digits) and assign to it the input integer split up
#   - iterate through array and sum digits, if result is >= 10
#     - reassign to digits array and repeat
#   - when result is less than 10 return resultant integer