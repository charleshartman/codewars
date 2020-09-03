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
  arr = num.digits.reverse
  index = 0
  while index < arr.length - 1
    if arr[index] < arr[index + 1]
      arr.delete_at(index)
      return arr.join.to_i
    end
    index += 1
  end
  arr.pop
  arr.join.to_i
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(548285) == 58285
p delete_digit(100) == 10
p delete_digit(10) == 1
p delete_digit(178662) == 78662

=begin

input: integer
output: integer
rules:
  - find the greatest number possible when removing one digit 
    from given number
  - given number will be greater than 10 and less than 1000000
data structure: integers, arrays
algorithm:
  - initialize counter (index) at 0
  - iterate through (arr) with index while index is less then arr.length
    - if element at (index) is less than element at index + 1
      delete element and break
  - join array and convert to integer
  - return integer result

=end

# completed in 45m
