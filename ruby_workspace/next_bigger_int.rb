# next_bigger_int.rb

# You have to create a function that takes a positive integer number and returns
# the next bigger number formed by the same digits:
#
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

# def next_bigger(int)
#   digits = int.digits
#   max_int = digits.sort.reverse.join.to_i
#  
#   (int..max_int).each do |num|
#     p num
#     if num.
#   end
# end

# p next_bigger(12) == 21
# p next_bigger(513) == 531
# p next_bigger(2017) == 2071
# p next_bigger(414) == 441
# p next_bigger(144) == 414
# p next_bigger(9) == -1
# p next_bigger(111) == -1
# p next_bigger(531) == -1

# problem: 
#   - take an integer and return the next largest integer that can be formed
#     by using the same digits as those found in the original integer
#   - if no greater number can be formed, return -1
# input: integer
# output: integer
# data structure: integers, array
# algorithm:
#   - initialize new array (digits) with given integer split into digits
#   - initialize new variable (max_int) to hold max value for use in iteration
#     - get that value by sorting the digits array
#   - iterate from given integer to max integer looking for numbers that contain
#     the digits in (digits) array. ***
#     - if match is found, then return the first match as integer
#     - if no match is found then return -1


def next_bigger(num)
  return -1 if num == max_number(num)
  next_number = num

  loop do
    next_number += 1
    return next_number if max_number(num) == max_number(next_number)
  end
end

def max_number(num)
  num.digits.sort.reverse.join.to_i
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1

# -> check if the argument is already the max number
#    -> if yes, return -1

# -> increment the argument by 1 until a bigger number with same digits is found; call variable holding incremented number new_number
#    -> check if max of new_number == max of n
#       -> if they're equal, then return next_number  

