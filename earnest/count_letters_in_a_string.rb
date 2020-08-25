# count_letters_in_a_string.rb

def letter_count(str)
  occurrences = Hash.new(0)
  str.each_char { |char| occurrences[char.to_sym] += 1 }
  occurrences
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# rules:
# => iterate through string and create hash key/value pairs for each letter
# => input string will be all lowercase alpha
# => key value must be symbol

# input: string
# output: return hash (occurrences)
# data structure: string, array, hash

# algorithm:
# => initialize hash (occurrences) with default value 0
# => iterate through each_char in string and add char to hash as key (converted
# => to symbol) and add one to counter
# => return (occurrences) hash

# completed in 9m

# one-liner from CW:
# def letter_count(str)
#   str.chars.each_with_object(Hash.new(0)) { |c, h| h[c.to_sym] += 1 }
# end
