# counting_duplicates.rb
# 6 kyu

# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive
# alphabetic characters and numeric digits that occur more than once in the
# input string. The input string can be assumed to contain only alphabets
# (both uppercase and lowercase) and numeric digits.

# Examples:
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

def duplicate_count(str)
  counter = 0
  (('a'..'z').to_a + ('0'..'9').to_a).each do |char| 
    counter += 1 if str.downcase.count(char) > 1
  end
  counter
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
p duplicate_count("abc112233") == 3

=begin

problem: 
  - return the total number of times a single alphanumberic occurs more
    one time in the given string
  - case insensitive
  - numerics included
  - given the rules returned integer will always be 0-36 (a-z0-9)

input: string
output: integer
data structure: string, array, integer

algorithm:
  - iniitalize a variable (counter) to hold count
  - downcase the given string, assign to working_str
  - iterate from (a..z), counting counter of each letter
    -if letter occurs more then once
      - add one to the (counter) 
  - iterate from (0..9), counting occurrences of each number
    -if number occurs more then once
      - add one to the (counter) 
  - return counter

=end

# completed in 20m
