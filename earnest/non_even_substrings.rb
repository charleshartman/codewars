# non_even_substrings.rb

def find_all_substrings(str)
  subs = []

  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each do |idx2|
      subs << str[idx1..idx2]
    end
  end

  subs
end

def solve(str)
  find_all_substrings(str).select { |sub| sub.to_i.odd? }.size
end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

=begin

input: string
output: integer
data structure: array, string, integer
rules:
  - return the total number of substrings from the given string that represent
    odd numbers (when converted to integers)
algorithm:
  - define a method to gather all substrings into the (subs) array
    - initialize (subs) array
    - iterate from (index) 0 to last index in string (str.length - 1)
      - iterate from index 0 to last index in substring (str.length - 1)
        - push (<<) substring into (subs) array
    - return (subs) array

  - define main method
    - select all substrings from (subs) that when converted to an integer are
      odd
    - return the length of the selected array 

=end
