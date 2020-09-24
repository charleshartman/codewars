# simple3_string_expansion.rb
# 6 kyu

# Given a string that includes alphanumeric characters ('3a4B2d') return the
# expansion of that string: The numeric values represent the occurrence of each
# letter preceding that numeric value. There should be no numeric characters
# in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.
# string_expansion('3D2a5d2f') == 'DDDaadddddff'

# If there are two consecutive numeric characters the first one is ignored.
# string_expansion('3d332f2a') == 'dddffaa'

# If there are two consecutive alphabetic characters then the first character
# has no effect on the one after it.
# string_expansion('abcde') == 'abcde'

# Your code should be able to work for both lower and capital case letters.
# string_expansion('') == ''

def string_expansion(str)
  result = ''
  multiple = 1
  str.chars.each do |char|
    char.match?(/[0-9]/) ? multiple = char.to_i : result << char * multiple
  end
  result
end

p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'
p string_expansion('111111') == ''
p string_expansion('M21d1r32') == 'Mdr'

=begin

<-PEDAC->
problem:
  - when a letter is followed by a number in the given string, add that many of
    said letter to the returned string
  - ignore numbers not directly followed by letter
  - if no number then return single character of that letter

input: string
output: string
data structure: string, array, integer

algorithm:
  - initialize (expanded) to ''
  - convert given string to (chars)
  - initialize multiplier to 1
  - iterate through (chars) with index
    - if char matches /[0-9]/ and chars[index + 1] matches /[0-9]/
      - next
    - if char matches /[0-9]/ and chars[index + 1] matches /[a-zA-Z]/
      then set multiplier to char converted to integer
    - else push char * multiplier into (expanded)
  - return (expanded) 

=end
