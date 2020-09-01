# highest_scoring_word.rb

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the
# alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the
# original string.

# All letters will be lowercase and all inputs will be valid.
# require 'pry'

SCORE = {}
num = 0
('a'..'z').each { |char| SCORE[char] = (num += 1) }

def high(str)
  words = str.split
  highest_score = 0
  highest_word = ''

  words.each do |word|
    current_score = 0

    word.each_char { |char| current_score += SCORE[char] }

    if current_score > highest_score
      highest_score = current_score
      highest_word = word
    end
  end

highest_word
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'

=begin

input: string
output: string
data structure: string, array, hash

rules:
  - find the word within the given string that has the highest value when using
    the alphabet valued at 1-26 as a key
  - all strings will be lowercase alpha only
  - if two words have the same score return word that appears earliest in the 
    given string

algorithm:
  - iniitalize a hash dictionary for scoring (SCORE)
  - convert given string to array (words)
  - initialize variable (highest_score) to hold current interger score
  - initialize variable (highest_word) to hold string of current high scoring
  - initialize variable (current_score) to hold accumulating per word score
    word
  - iterate through (words) array
    - iterate through each character of current (word), matching dictionary
      entry and adding to (current_score)
    - if current_score > highest_score
      then assign word to highest_word and assign current_score to highest_score
  - return highest_word

=end

# completed in 45m
# need to memorized quick way to build hash dictionary alpha/value or different
# scoring strategy

=begin

CW solution I like:

def high(x)
  x.split.max_by { |w| score_word(w) }
end

def score_word(word)
  word.chars.inject(0) { |sum, ch| sum + (ch.ord - 96) }
end

=end