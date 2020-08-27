# persistence.rb
# 6 kyu

def persistence(int)
  result = 0
  nums = int.digits
  
  while nums.length > 1
    product = nums.inject(:*)
    result += 1
    nums = product.digits
  end

  result
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4

=begin

input: integer
output: integer
data structure: integers, array
rules: 
  - return the number of times the digits of a number must be multiplied in 
    order to arrive at a single digit number
  - single digit arguments will return 0

algorithm:
  - initialize variable to hold (result) to 0
  - convert number to array (nums) of separate digits
  - while array length is > 1
    - multiply all elements in nums array to get a product
    - result += 1
    - reassign nums to digits in returned product
  - return result

=end

# completed in 20m
