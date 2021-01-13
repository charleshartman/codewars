# another_longest_palindrome.rb
# 6 kyu

=begin
Longest Palindrome

Find the length of the longest substring in the given string s that is the same
in reverse.

As an example, if the input was "I like racecars that go fast", the substring
(racecar) length would be 7.

If the length of the input string is 0, the return value must be 0.

Examples:
"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0

=end

def find_all_subs(str)
  subs = []
  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each { |idx2| subs << str[idx1..idx2] }
  end

  subs
end

def longest_palindrome(str)
  return 0 if str.empty?

  pals = []
  find_all_subs(str).each { |sub| pals << sub if sub == sub.reverse }

  pals.max_by(&:length).length
end

p longest_palindrome("") == 0
p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9

=begin

problem:
  - given a string, return the length of the longest palindromic substring
  - empty strings should return 0

input: string
output: integer
data structure: string, array, integer

algorithm:
  - define a method to (find all subs)trings
    - initialize an empty array (subs)
    - iterate over each index of string to create starting position
      - iterate again over each index to create ending position
      - use upto(str.length - 1) to define range
      - push each substring into subs array
    - return (subs)
  - define main method (to find all palindromes within an array of strings)
    and return the length of the longest
    - guard clause for empty string
    - initialize result array (pals)
    - initialize subs array and assign return value of calling (find_all_subs)
      on given string
    - iterate over subs array and push any string that is equal to itself
      reversed into the (pals) array
    - return the value of the longest string in the (pals) array (max_by).size

=end

# completed in 25m
# refactored down from algorithm a bit
