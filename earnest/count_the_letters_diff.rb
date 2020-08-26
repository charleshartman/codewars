# count_the_letters_diff.rb

# Count the letters in a given string and return the letter count in a hash with
# the letter as the key and the count as the value.
# The keys must be symbols, not strings. Ignore case.
# Return nil if the string does not contain any characters.

def count_letters(str)
  return nil if str.empty?

  occurrences = Hash.new(0)
  new_str = str.delete(' ').downcase
  new_str.each_char do |char|
    occurrences[char.to_sym] += 1
  end

  occurrences
end

p count_letters('Launch School') == { :l => 2, :a => 1, :u => 1, :n => 1, \
                                      :c => 2, :h => 2, :s => 1, :o => 2 }
p count_letters('character') == { :c => 2, :h => 1, :a => 2, :r => 2, :t => 1, :e => 1 }
p count_letters('') == nil

=begin

input: string
output: hash of key-value pairs where the keys are letters.to_sym and values
        are the number of occurrences of the letter within the string
data structure: string, hash

rules: don't count whitespace, ignore case, keys must be symbols, empty strings
       return nil

algorithm:
  - initialize hash (occurrences) with default value of 0 
  - return nil if given string is empty
  - initialize variable (new_str) and assign deleted white space and downcased
    string to it
  - iterate through new_str (each_char) and add key (if not already there) 
    plus one occurrence to value
  - return hash (occurrences)

=end

