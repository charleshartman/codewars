# longest_repitition.rb
# 6 kyu

# For a given string s find the character c (or C) with longest consecutive
# repetition and return:

# [c, l]
# where l (or L) is the length of the repetition. If there are two or more
# characters with the same l return the first in order of appearance.

# For empty string return:
# ["", 0]

def longest_repetition(str)
  arr = str.chars.chunk(&:itself).map(&:last).max_by(&:length)
  arr ? [arr[0], arr.length] : ['', 0]
end

p longest_repetition("aaaabb") == ['a', 4]
p longest_repetition("bbbaaabaaaa") == ['a', 4]
p longest_repetition("cbdeuuu900") == ['u', 3]
p longest_repetition("abbbbb") == ['b', 5]
p longest_repetition("aabb") == ['a', 2]
p longest_repetition("ba") == ['b', 1]
p longest_repetition("") == ['', 0]
p longest_repetition("aaabbcccddd") == ['a', 3]

=begin

input: string
output: array of two elements, string and integer
data structure: string, array, integers

rules:
  - return char string with the greatest uninterrupted repetition within string
  - in case of tie, return first char in order of appearance within the string
  - empty string should return ['', 0]

algorithm:
  - convert string to array (arr)
  - chunk array based on char change
  - map to capture last chunks of each subarray
  - find the greatest length subarray
  - unless arr is empty
    - return first element of array and size of array as two element array
    - else return ['', 0]

=end
