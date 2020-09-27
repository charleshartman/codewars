# casino_chips.rb
# 6 kyu

=begin

You are given three piles of casino chips: white, green and black chips:

the first pile contains only white chips
the second pile contains only green chips
the third pile contains only black chips
Each day you take exactly two chips of different colors and head to the casino.
You can choose any color, but you are not allowed to take two chips of the same
color in a day.

You will be given an array representing the number of chips of each color and
your task is to return the maximum number of days you can pick the chips. Each
day you need to take exactly two chips.

Brute force is not the way to go here. Look for a simplifying mathematical
approach.

=end

p solve([1, 1, 1]) == 1
p solve([1, 2, 1]) == 2
p solve([4, 1, 1]) == 2
p solve([8, 2, 8]) == 9
p solve([8, 1, 4]) == 5
p solve([7, 4, 10]) == 10
p solve([12, 12, 12]) == 18 
p solve([1, 23, 2]) == 3

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
