# scramble_redux.rb
# 5 kyu

# Complete the function scramble(str1, str2) that returns true if a portion
# of str1 characters can be rearranged to match str2, otherwise returns false.

# Only lower case letters will be used (a-z). No punctuation or digits will be
# included. Performance needs to be considered.

# def scramble(str1, str2)
#   str2.chars.all? { |char| str1.include?(char) }
# end

def scramble(str1, str2)
  str2.chars.uniq.all? { |char| str1.count(char) >= str2.count(char) }
end

p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

=begin

<-PEDAC->
problem:
  - return true or false based on whether all chars in str2 are present in str1
  - consider performance
  - only a-z (lowercase) will be used

input: string
output: boolean true or false
data structure: string, array

algorithm:
  - convert str2 to an array (chars) 
  - iterate through (chars)
    - does str1 include all? chars

=end
