# next_bigger_redux.rb
# 4 kyu

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
  biggest = int.digits.sort.reverse.join.to_i
  return -1 if biggest == int

  (int + 1).upto(biggest) do |num|
    return num if num.digits.sort.reverse.join.to_i == biggest
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

<-PEDAC->
problem:
  - return the next biggest number possible using the same digits in the
    given number
  - if no bigger number is possible return -1

input: integer
output: integer
data structure: integer, array 

algorithm:
  - initialize (biggest) and assign given integer [digits] reverse sorted
    and converted back to_i
  - if (biggest) is equal to given number return -1
  - iterate from (given number + 1) to biggest (num)
    if num reverse sorted and converted is equal to biggest
    - return num

=end
