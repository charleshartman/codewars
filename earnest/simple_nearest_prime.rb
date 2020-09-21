# simple_nearest_prime.rb
# 6 kyu

# In this Kata, you will be given a number and your task will be to return
# the nearest prime number.

# solve(4) = 3. The nearest primes are 3 and 5. If difference is equal, pick
# the lower one. 
# solve(125) = 127
# We'll be testing for numbers up to 1E10. 500 tests.

def is_prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)).none? { |i| num % i == 0 }
end

def solve(num)
  return num if is_prime?(num)
  counter = 1
  loop do
    lesser = num - counter
    greater = num + counter
    return lesser if is_prime?(lesser)
    return greater if is_prime?(greater)
    counter += 1
  end
end

# p is_prime?(2) == true
# p is_prime?(11) == true
# p is_prime?(15) == false

p solve(3) == 3
p solve(11) == 11
p solve(4) == 3
p solve(110) == 109
p solve(1110) == 1109
p solve(3000) == 2999
p solve(35000) == 34981
p solve(350000) == 350003
p solve(3500000) == 3499999
p solve(10000000000) == 10000000019

=begin

<-PEDAC->
problem: 
  - find the near prime number to the given number.
  - could be less or greater, if two primes equal distance from given num, then
    return lesser

input: integer
output: integer
data structure: integer

algorithm:
  - define is_prime? method
    - return false if less than 2
    - iterate from 2 to sqrt of given num
    - none? of given num % iterator == 0 returns true else false
  - define main method
    - initialize counter to 1
    - loop do
      - assign lower the value of given number - counter
      - assign higher the value of given number + counter
      return lower if is_prime? is true
      return higher if is_prime? is true
      increment counter + 1

=end
