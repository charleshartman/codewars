# validate_cc_number.rb
# 6 kyu

# In this Kata, you will implement the Luhn Algorithm, which is used to help
# validate credit card numbers.

# Given a positive integer of up to 16 digits, return true if it is a valid
# credit card number, and false if it is not.

# Here is the algorithm:

# 1a. Double every other digit, scanning from right to left, starting from the
# second digit (from the right).
# (Another way to think about it is: if there are an even number of digits,
# double every other digit starting with the first; if there are an odd number
# of digits, double every other digit starting with the second.)

# 1b. If a resulting number is greater than 9, replace it with the sum of its own
# digits (which is the same as subtracting 9 from it).

# 2. Sum all of the final digits.

# 3. Finally, take that sum and divide it by 10. If the remainder equals zero, 
# the original credit card number is valid.

def validate(num)
  nums = num.digits.reverse

  if nums.length.even?
    nums.map!.with_index { |num, idx| idx.even? ? num + num : num }
  else
    nums.map!.with_index { |num, idx| idx.odd? ? num + num : num }
  end
  
  nums.map! { |num| num > 9 ? num -= 9 : num }.sum % 10 == 0
end

p validate(123) == false
p validate(1) == false
p validate(2121) == true
p validate(1230) == true
p validate(891) == false

=begin

<-PEDAC->
problem:
  - apply the Luhn Algorithm to the given number, return validity: true or false

input: intoger
output: boolean 
data structure: integer, array

algorithm:
  - initialize (digits) and assign value of converting given integer to array
  - iterate through array and assign return to (nums)
    - set (counter) at 0 or 1 depending on if length is odd or even
      - if length is even, double every second number starting with index 0
      - else double every other number starting with index 1
  - iterate through (nums), if num is greater than 9 then subtract 9 from it
  - sum nums and modulus 10 == 0 then true else false
=end

# completed in 35m