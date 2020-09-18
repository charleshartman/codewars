# staggered_caps.rb - Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count
# as characters when switching between upper and lowercase.

def staggered_case(str)
  str.chars.map.with_index { |char, idx| idx.odd? ? char.downcase : char.upcase }.join
end


# Examples:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin

<-PEDAC->
problem:
  - return a new string where every other character of the given string is
    capitalized
  - special chars and white space are counted but not altered

input: string
output: string
data structure: string, array 

algorithm:
  - iterate through string (chars) .each_index
    - if idx is odd? then downcase
    - else upcase
  - join and return new string

=end
