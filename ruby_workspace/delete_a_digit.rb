# delete_a_digit.rb - Simple Fun #79: Delete a Digit

# Given an integer n, find the maximal number you can obtain by deleting
# exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;
# For n = 1001, the output should be 101.
# 
# Input/Output
# [input] integer n
# Constraints: 10 ≤ n ≤ 1000000.
# [output] an integer

def delete_digit(num)
  digits = num.digits.reverse
  digits.sort.shift
  digits.join.to_i
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

# input: integer
# output: integer
# rules:
# => find the greatest number possible when removing one digit from given number
# => given number will be greater than 10 and less than 1000000
# data structure: integers, arrays
# algorithm:
# => convert integer to array (digits)
# => sort array
# => remove first element
# => reverse sort and join to string and convert to integer
# => return integer result
