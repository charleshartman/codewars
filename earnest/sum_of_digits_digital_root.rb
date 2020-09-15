# sum_of_digits_digital_root.rb
# 6 kyu

# Digital root is the recursive sum of all the digits in a number.

# Given n, take the sum of the digits of n. If that value has more than one
# digit, continue reducing in this way until a single-digit number is produced.
# This is only applicable to the natural numbers.

# Examples

#     16  -->  1 + 6 = 7
#    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
# 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
# 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

def digital_root(int)
  int = int.digits.inject(:+) while int > 9
  int
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2

=begin

problem:
  - sum all digits and repeat until sum is only one digit in length
  - when one digit return value of digit

input: integer
output: integer
data structure: integer, array

algorithm:
  - while int < 10
    - convert int to array (digits) 
    - sum all digits
  - return digit

=end