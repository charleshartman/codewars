# repeated_substring_pattern.rb

# Given a non-empty string check if it can be constructed by taking a substring
# of it and appending multiple copies of it together. You may assume the given
# string consists of lowercase English letters only.

def find_all_substrings(str)
  subs = []
  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      subs << str[idx1..idx2]
    end
  end
  subs
end

def repeated_substring_pattern(str)
  subs = find_all_substrings(str)
  subs.uniq.any? do |sub|
    sub.length < str.length &&
    str.length % sub.length == 0 && 
    sub * (str.length / sub.length) == str
  end
end

# See examples:
p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true

=begin

<-PEDAC->
problem:
  - determine if a string is made up of a succession of identical substrings

input: string
output: true or false
data structure: string, array, boolean

algorithm:
  - define a method to find all substrings
   - initialize (subs) to []
   - iterate from 0 to string length - 1 (idx1)
      - iterate from idx1 to string length - 1 (idx2)
      - push each iteration into (subs) [idx1..idx2]
   - return (subs)

  - define main method
    - call the helper method on given string, and assign return value to (subs)
    - iterate through uniq subs, do any? substrings meet the conditions
      - logic: does str.length % sub.length == 0? AND
             given string.length / sub.length = multiplier
             sub * multiplier == str
      - return true or false

=end

# completed in 35m 
