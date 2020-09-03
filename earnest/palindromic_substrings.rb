# palindromic_substrings.rb
# Easy 8 - Problem 5

=begin

Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged
in the same sequence as the substrings appear in the string. Duplicate 
palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous
exercise.

For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
"Abc-bA" are. In addition, assume that single characters are not palindromes.

=end

def find_all_substrings(str)
  subs = []

  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      subs << str[idx1..idx2]
    end
  end
  subs
end

def palindromes(str)
  subs = find_all_substrings(str)
  pals = []

  subs.each do |sub|
    if sub == sub.reverse && sub.length > 1
      pals << sub
    end
  end

  pals
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=begin

rules:
  - find all palindromic substrings within the given string
  - palindromic means case sensitive and includes non-alphanumeric characters
  - we should return duplicate palindromic substrings
  - we should NOT return single character substrings
  - return value should be in the same order as we pull them from given string

input: string
output: array of strings
data structure: string, array

algorithm:
  - create a method to (find_all_substrings)
    - initialize an array to hold results (subs)
    - iterate through the string starting at index 0 until the length of string
      minus one - larger outer iterator for starting place within string
      - iterate through lower level building substrings
  - create main method:
  - initialize an array (subs) assign to it the return value of
    (find_all_substrings)
  - initialize a result array (pals) at []
  - iterate through the (subs) array
    - if string is equal to the string reversed AND the string's length is 
      greater than 1
      - push into (pals)
  - return (pals)

=end