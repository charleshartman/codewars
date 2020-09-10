# sf135_missing_alphabets.rb
# 6 kyu

# Given string s, which contains only letters from a to z in lowercase.
# A set of alphabet is given by abcdefghijklmnopqrstuvwxyz.
# 2 sets of alphabets mean 2 or more alphabets.

# Your task is to find the missing letter(s). You may need to output them by the
# order a-z. It is possible that there is more than one missing letter from more
# than one set of alphabet.

# If the string contains all of the letters in the alphabet, return an empty
# string ""

# Find the letters contained in each alphabet but not in the string(s). Output
# them by the order a-z. If missing alphabet is repeated, please repeat them
# like "bbccdd", not "bcdbcd"

def missing_alphabets(str)
  count = Hash.new(0)
  str.chars.each { |char| count[char] += 1 }
  sets = count.values.max
  fill_in = ''
  ('a'..'z').to_a.each do |let|
    fill_in << let * (sets - str.count(let)) if str.count(let) < sets
  end

  fill_in
end

p missing_alphabets("abcdefghijklmnopqrstuvwxy") == "z"
p missing_alphabets("abcdefghijklmnopqrstuvwxyz") == ""
p missing_alphabets("aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy") == "zz"
p missing_alphabets("abbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxy") == "ayzz"
p missing_alphabets("codewars") == "bfghijklmnpqtuvxyz"


=begin

problem:
  - take the given string and return the characters needed to "fill-in" all the
    missing characters to make a complete, lowercase a-z set or sets
  - any repetition of characters implies another set... so max occurence of
    a single character determines number of sets they we need to fill-in
  - if no characters are missing then return empty string

input: string
output: string

data structure: string, array

algorithm:
  - initialize empty hash (count) for counting chars
  - iterate over chars to
  - find the number of occurences of each char in array (add occurences to hash)
  - find max values and call result (sets)
  - create a key set array for iteration ('a'..'z').to_a, call it (skeleton)
  - create a variable with empty string for result (fill_in)
  - iterate through (skeleton)
    - count number of occurences of each letter
    - if less than sets
      - push difference into (fill_in)
  - return (fill_in)

=end