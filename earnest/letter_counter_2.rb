# letter_counter_2.rb

# Letter Counter (Part 2)

# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(str)
  counter = Hash.new(0)
  arr = str.split.map { |word| word.gsub(/\W+/, '') }
  arr.each { |word2| counter[word2.size] += 1 }
  counter
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

=begin

algorithm:
  - initialize a new hash (counter) with a default value of 0
  - initialize (arr) to hold return of string split 
    - iterate and gsub out non letters
  - iterate through (arr)
    - count each word length and add to (counter) hash, incrementing value by 1
  - return hash (counter)

=end