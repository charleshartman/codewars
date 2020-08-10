# 6kyu - Split Strings
# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the missing
# second character of the final pair with an underscore ('_').

def solution(str)
  str << '_' if str.length.odd?
  arr = str.split(/(\S\S)/).delete_if { |element| element == "" }
end

# Examples:
p solution('abc') # should return ['ab', 'c_']
p solution('abcdef') # should return ['ab', 'cd', 'ef']
