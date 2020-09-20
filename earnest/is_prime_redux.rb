# is_prime?_redux.rb

def is_prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)).none? { |x| num % x == 0 }
end

p is_prime?(4) == false
p is_prime?(100) == false
p is_prime?(999) == false
p is_prime?(958297) == false
p is_prime?(-7) == false

p is_prime?(2) == true
p is_prime?(3) == true
p is_prime?(5) == true
p is_prime?(457) == true
p is_prime?(39229) == true

p is_prime?(-8) == false
p is_prime?(1) == false
p is_prime?(0) == false


=begin

algorithm:
  guard: return false if given number is neg? || 0 || 1
  - iterate from 2 to given number - 1
    - return false if given num % iterator == 0
  - true

=end