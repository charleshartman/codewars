# anagram_detection.rb
# 7 kyu

# An anagram is the result of rearranging the letters of a word to produce a new
# word (see wikipedia).

# Note: anagrams are case insensitive

# Complete the function to return true if the two arguments given are anagrams
# of each other; return false otherwise.

# Examples:
# "foefet" is an anagram of "toffee"
# "Buckethead" is an anagram of "DeathCubeK"

def anagram?(str1, str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort
end

p anagram?('Creative', 'Reactive') == true
p anagram?("foefet", "toffee") == true
p anagram?("Buckethead", "DeathCubeK") == true
p anagram?("Twoo", "WooT") == true
p anagram?("dumble", "bumble") == false
p anagram?("ound", "round") == false
p anagram?("apple", "pale") == false

=begin

input: 2 strings
output: boolean true or false

data structure: strings
rules:
  - are same characters and same occurrence count of said chars in both strings?
  - case-insensitive

algorithm:
  - downcase, covert to array and sort both strings and check for equality
  - return true if equal
  - else return false

=end

# completed in 8m
