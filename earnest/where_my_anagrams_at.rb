# where_my_anagrams_at.rb
# 5 kyu

# What is an anagram? Well, two words are anagrams of each other if they both
# contain the same letters. For example:

# 'abba' & 'baab' == true
# 'abba' & 'bbaa' == true
# 'abba' & 'abbba' == false
# 'abba' & 'abca' == false

# Write a function that will find all the anagrams of a word from a list. You
# will be given two inputs a word and an array with words. You should return
# an array of all the anagrams or an empty array if there are none.

def anagrams_orig(word, words)
  words.each_with_object([]) { |str, result| result << str if str.chars.sort == word.chars.sort }
end

def anagrams(word, words)
  words.select { |str| str.chars.sort == word.chars.sort }
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

=begin

problem:
  - we are given a single string and an array of strings. we should return all
    strings from the given array that are anagrams of the given word.
  - if there are no anagrams return empty array

input: string, array of strings
output: array
data structure: string, array

algorithm:
  - initialize (result) array to []
  - iterate through given array (words)
  - if element word sorted is equal to given word sorted
    - push to result array
  - return result array

=end

# completed in 15m
