# panagram.rb
# 6 kyu

def panagram?(str)
  alphabet = ('a'..'z').map { |char| char }
  alphabet.all? { |char| str.downcase.include?(char) }
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false

=begin

input: string
output: boolean true or false
data structure: string, boolean
rules:
  - given string must contain AT LEAST one of every character a-z
  - case is irrelevant
  - ignore digits and punctuation

algorithm:
  - create array of a-z
  - iterate through alphabet array
    - look for each array char in given string
    - if all are present return true
    - else false

=end

# completed in 20m
