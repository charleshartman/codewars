# scramble.rb
# 5 kyu

# Complete the function scramble(str1, str2) that returns true if a portion
# of str1 characters can be rearranged to match str2, otherwise returns false.

#Only lower case letters will be used (a-z). No punctuation or digits will be
# included. Performance needs to be considered.

def scramble(str1,str2)
  str2.chars.each do |letter|
    if str1.include?(letter)
      str1.sub!(letter, '*')
    else
      return false
    end
  end

  true
end

p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true

=begin

input: 2 strings
output: boolean true or false
data structure: string, array, boolean

rules: 
  - determine if the characters in str1 can be used to construct str2
  - use each character only once

algorithm:
  - convert str2 to array (needed_letters)
  - iterate through (needed_letters)
    - if letter is present in str1
      - then sub! letter with *
      else return false
  - return true since if we are here then all iterations have completed

str.sub!('c', '*') if str.include?('c')

=end

# refactored out assignment of str2 to variable, not needed
# completed in 25m

# CW solution to think about:

def scramble_cw(s1,s2)
  s2.chars.all? { |c| s1.sub!(c, '') }
end
