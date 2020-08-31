# longest_vowel_chain.rb

# The vowel substrings in the word codewarriors are o,e,a,io. The longest of
# these has a length of 2. Given a lowercase string that has alphabetic
# characters only (both vowels and consonants) and no spaces, return the length
# of the longest vowel substring. Vowels are any of aeiou.

def solve(str)
  str.scan(/[aeiou]+/).max_by { |str| str.length }.length
end

# CW solution:
# s.scan(/[aeiou]+/).map(&:size).max
