# give_me_a_diamond.rb
# 6 kyu

# Jamie is a programmer. Jamies' girlfriend likes diamonds, and wants a diamond
# string from James. Since James doesn't know how to make this happen, he needs
# your help.

# Task

# You need to return a string that looks like a diamond shape when printed on
# the screen, using asterisk (*) characters. Trailing spaces should be removed,
# and every line must be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is
# not possible to print a diamond of even or negative size.

# Examples
=begin
A size 3 diamond:

 *
***
 *
...which would appear as a string of " *\n***\n *\n"

A size 5 diamond:

  *
 ***
*****
 ***
  *
...that is: " *\n ***\n*****\n ***\n *\n"
=end

def diamond(int)
  return nil if int.even? || int < 0

  jewel = ''
  rs = int / 2
  
  1.upto(int) do |num|
    if num.odd?
      jewel << ' ' * rs + '*' * num + "\n"
      rs -= 1
    end
  end

  rs += 2

  (int - 2).downto(1) do |num|
    if num.odd?
      jewel << ' ' * rs + '*' * num + "\n"
      rs += 1
    end
  end

  jewel
end

p diamond(1) == "*\n"
p diamond(3) == " *\n***\n *\n"
p diamond(5) == "  *\n ***\n*****\n ***\n  *\n"
p diamond(0) == nil
p diamond(-3) == nil
p diamond(2) == nil

=begin

problem: 
  - create a single string with \n characters to output a diamond pattern
    to the screen that is the given integer wide at its widest point
  - return nil if given number is even or <= 0

input: integer
output: string
data structure: string, integer

algorithm:
  - initialize an empty string to build diamond in to (jewel)
  - initialize counter for rows/spaces
  - guard: return nil if given number is even or <= 0
  - iterate from 1 to given number by 2s
    - add given number worth of stars and required spaced to (jewel) at each
      iteration
  - iterate from given number to 1 by 2s
    - add given number worth of stars and required spaced to (jewel) at each
      iteration
  - return (jewel) string

=end

