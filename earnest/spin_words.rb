# spin_words.rb
# 6 kyu

def spin_words(str)
  str.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

# Write a function that takes in a string of one or more words, and returns the
# same string, but with all five or more letter words reversed. Strings passed
# in will consist of only letters and spaces. Spaces will be included only when
# more than one word is present.

# Examples: 
p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test" 
p spin_words("This is another test") == "This is rehtona test"

=begin

input: string
output: string
rules: 
  - reverse any word within the given string that is five or more letters
    in length
  - strings provided will have only letters and white space
  - white space only when more than one word

data structure: string, array
algorithm:
  - split given string into array (words)
  - iterate through (words) array
    - if word length is >= 5 then reverse the characters in the word
    - else word
  - join (words) array and return string

=end

# completed in 12m
