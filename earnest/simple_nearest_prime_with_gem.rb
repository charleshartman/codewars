# simple_nearest_prime_with_gem.rb
# 6 kyu

# In this Kata, you will be given a number and your task will be to return
# the nearest prime number.

# solve(4) = 3. The nearest primes are 3 and 5. If difference is equal, pick
# the lower one. 
# solve(125) = 127
# We'll be testing for numbers up to 1E10. 500 tests.
require 'prime'

def solve(num)
  return num if num.prime?
  counter = 1
  loop do
    less = num - counter
    more = num + counter
    return less if less.prime?
    return more if more.prime?
    counter += 1
  end
end

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
  - find the nearest prime number to the given number.
  - could be less or more, if two primes equal distance from given num, then
    return lesser

input: integer
output: integer
data structure: integer

algorithm:
  - require prime
  - guard: return num if num is prime
  - initialize counter to 1
  - loop do
    - assign (less) the value of given number - counter
    - assign (more) the value of given number + counter
    return less if less is prime
    return more if more is prime
    increment counter + 1

=end
