# numbers_in_strings.rb
# 7 kyu

=begin

You will be given a string that has lowercase letters and numbers. Your task is
to compare the number groupings and return the largest number.

For example, solve("gh12cdy695m1") = 695, because this is the largest of all
number groupings.

=end

def solve_orig(str)
  numbers = str.scan(/\d+/)
  numbers.map! { |num| num.to_i }
  numbers.sort.last
end

# refactored

def solve(str)
  str.scan(/\d+/).map(&:to_i).sort.last # could just use Array#max here
end

p solve("gh12cdy695m1") == 695
p solve("2ti9iei7qhr5") == 9
p solve("vih61w8oohj5") == 61
p solve("f7g42g16hcu5") == 42
p solve("lu1j8qbbb85") == 85

=begin

<-PEDAC->
problem:
  - given a string with lowercase letters and numbers only, return the integer
    value represented by the greatest number grouping

input: string
output: integer
data structure: string, array, integer 

algorithm:
  - initialize (numbers) array and extract to it regex series of digits matches
  - iterate through (numbers) and convert each element to integer
  - sort (numbers) and return the last element in the array

=end

