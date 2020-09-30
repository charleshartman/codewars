# simple_square_numbers.rb
# 6 kyu

# In this Kata, you will be given a number n (n > 0) and your task will be to
# return the smallest square number N (N > 0) such that n + N is also a perfect
# square. If there is no answer, return -1.

# solve(13) == 36
# because 36 is the smallest perfect square that can be added to 13 to form
# a perfect square => 13 + 36 = 49

p solve(3) == 1 # 3 + 1 = 4, a perfect square
p solve(12) == 4 # 12 + 4 = 16, a perfect square
p solve(1) == -1
p solve(2) == -1
p solve(4) == -1
p solve(5) == 4
p solve(7) == 9
p solve(8) == 1    
p solve(9) == 16
p solve(10) == -1
p solve(11) == 25
p solve(13) == 36
p solve(17) == 64
p solve(88901) == 5428900
p solve(290101) == 429235524

=begin

<-PEDAC->
problem:
  - 

input:
output:
data structure: 

algorithm:
  - 

=end
