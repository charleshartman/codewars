# split_strings.rb
# 6 kyu

# Complete the solution so that it splits the string into pairs of two
# characters. If the string contains an odd number of characters then it
# should replace the missing second character of the final pair with
# an underscore ('_').

def solution(str)
  str << '_' if str.length.odd?
  str.scan(/../)
end

p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []

=begin

input: string
output: array of two character strings
data structure: strings, array
rules:
  - split string into array of two char strings
  - if str is odd length append an underscore to the end

algorithm:
  - append "_" to given string if string length is odd
  - initialize result array use scan method to split str into array of /../ 
  - return result array

=end

# completed in 15m, but had to look up scan method...

# also CW one liner:
# (str + '_').scan /../
