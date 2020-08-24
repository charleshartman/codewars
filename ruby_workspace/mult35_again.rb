# mult35_again.rb

def solution(num)
  return 0 if num <= 0

  multiples = []
  (1...num).each { |num| multiples << num if num % 3 == 0 || num % 5 == 0 }
  multiples.sum

end



p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168

# rules:
# => return sum of all multiples of 3 and 5 between 1 and given number
# => if number is less than 0 return 0

# input: integer
# output: return integer 
# data structure: integers, array for storage
# algorithm:
# => guard: return 0 if num is less than or equal to 0
# => initialize array to hold multiples (multiples)
# => iterate from 1 to given number
# => if number is multiple of 3 or 5, push into array
# => sum array and return sum
