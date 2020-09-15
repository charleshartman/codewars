# letter_counter.rb

# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(str)
  counter = Hash.new(0)
  str.split.each do |word|
    counter[word.length] += 1
  end
  
  p counter
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin

problem:
  - take the given string and store the letter count of each space separated
    word in a hash where key is word length and value is number of occurrences

input: string
output: hash
data structure: string, hash

algorithm:
  - initialize a new hash (counter) with a default value of 0
  - split string and iterate through result
    - count each word length and add to (counter) hash, incrementing value by 1
  - return hash (counter)

=end

