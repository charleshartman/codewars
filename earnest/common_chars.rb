# common_chars.rb

# Given and array of strings made only from lowercase letters, return an array
# of all characters that show up in all strings within the given array
# (including duplicates). For example, if a character occurs 3 times in all
# strings but not four times, you need to include that character three times in
# the final answer.

def common_chars(arr)
  result = []
  lower_alpha = ('a'..'z').to_a
  lower_alpha.each do |char|
    if arr.all? { |str| str.include?(char) }
      result << [char] * (arr.map { |str| str.count(char) }.min)
    end
  end
  p result.flatten
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaa', 'ccdd', 'eeffee', 'xxyyzz']) == []

=begin

<-PEDAC->
problem:
  - return an array of letters that occur in all strings of the given array,
    if a letter occurs 3 times in all strings then it should appear three
    times in the result array

input: array of strings
output: array of strings
data structure: array, string

algorithm:
  - initialize (result) to []
  - initialize lower_alpha to ('a'..'z').to_a
  - iterate through (lower_alpha)
    - if char is included in all strings of given array,
      count char in each string and push the char that many times into (result)
  - return (result)

=end
