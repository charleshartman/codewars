# decipher_this.rb
# 6 kyu

# You are given a secret message you need to decipher. Here are the things you
# need to know to decipher it:

# For each word:

# the second and the last letter is switched (e.g. Hello becomes Holle)
# the first letter is replaced by its character code (e.g. H becomes 72)
# Note: there are no special characters used, only letters and spaces

def decipher_this(string)
  words = string.split
  words.map do |word|
    ord = word.match(/[0-9]+/)[0].to_i
    word.delete!('0-9').prepend(ord.chr)

    # more elegant way without assigning variables
    # word[-1], word[1] = word[1], word[-1] if word.length > 2

    if word.length > 2
      second = word[1]
      last = word[-1]
      word[-1] = second
      word[1] = last
    end
  end

words.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

=begin

rules: change each word in the given string
       1. swap the last character and the 2nd character
       2. change the first character from it's ordinal value to its character
       - given string contains only letters and spaces, one space between each word

input: string
output: string
data structure: strings, array
algorithm:
  - split the given string into an array (words)
  - iterate through the array and transform the values in accordance with the rules
    - reassign str index position 0 to the character value represented by the ordinal
      - remove the ordinal value at the beginning of the string and store it as a variable (ord)
        - match all numeric characters at beginning of the string using regex
      - prepend the string with chr represented by the ordinal
    - store value at str index positions [1] and [-1] to variable (second) and (last)
    - reassign those two index positions to each other's values
  - join array with white spaces and return string

ord = str.match(/[0-9]+/)[0].to_i
str.prepend(ord.chr)
=end

# completed in 30m
