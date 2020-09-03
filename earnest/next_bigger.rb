# next_bigger.rb

=begin

You have to create a function that takes a positive integer number and returns
the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071

If no bigger number can be composed using those digits, return -1:

9 ==> -1
111 ==> -1
531 ==> -1

=end

def next_bigger(int)
  greatest = int.digits.sort.reverse.join.to_i
  return -1 if greatest == int
  
  (int + 1).upto(greatest) do |num|
    return num  if num.digits.sort.reverse.join.to_i == greatest
  end
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1

=begin

rules:
  - move the digits in the given number in such a way as to form the next
    greatest integer possible with those digits
  - if the given number is already at the max for digits then return -1

input: integer
output: integer
data strutture, integer, array

algorithm:
  - initialize local variable (greatest) and assign to it the value of given
    integer reverse sorted
  - the (greatest) possible number possible can be returned by sorting the digits
    in reverse, use this as a test/guard to begin, return -1 if given number is
    equal to (greatest)
  - iterate from given number to (greatest), if iteration (num) sorted is equal
    to greatest (already sorted) then return num

=end