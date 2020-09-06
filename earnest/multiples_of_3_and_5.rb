# multiples_of_3_and_5.rb
# 6 kyu

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5
# below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.
# Also, if a number is negative, return 0.

def solution(num)
  (1...num).select { |num| num if num % 3 == 0 || num % 5 == 0 }.sum
end

p solution(-998) == 0
p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168

=begin

algorithm:
  - guard: if given number is negative return 0
    (guard clause not necessary, negatives return 0)
  - iterate over range of 1 to given number
  - if num is multiple of 3 OR multiple of 5
    - select it
  - sum the selections
  - return sum

=end

# completed in 8m
