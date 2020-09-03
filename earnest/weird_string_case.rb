# weird_string_case.rb
# 6 kyu

# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
# returns the same string with all even indexed characters in each word upper
# cased, and all odd indexed characters in each word lower cased. The indexing
# just explained is zero based, so the zero-ith index is even, therefore that
# character should be upper cased.

# The passed in string will only consist of alphabetical characters and
# spaces(' '). Spaces will only be present if there are multiple words. Words
# will be separated by a single space(' ').

def weirdcase(str)
  result = ''
  str.split.each do |word|
    word.chars.each_with_index do |char, index|
      index.even? ? result << char.upcase : result << char.downcase
    end
    result << ' '
  end

  result.rstrip
end

# Examples:
p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"
p weirdcase('This is a test') == 'ThIs Is A TeSt'
p weirdcase('This') == 'ThIs'

=begin

input: string
output: string
data structure: string

rules:
  - modify given string so that even number indices are uppercase and odd number
    indices are lower case
  - whitespace chars are included in count

algorithm:
  - initialize variable to hold (result) string object
  - iterate through (chars) with index
    - if index is even, then upcase char and push to (result)
    - else downcase char and push to result
  - return result

=end

# completed in 45m
# missed the rule on this one that index reset with each word, confess to
# some hacking and slashing... boo on me.
