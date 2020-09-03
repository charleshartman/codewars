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
  # code
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



=end