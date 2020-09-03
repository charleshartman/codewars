# sort_array_ic.rb
# 6 kyu

# Sort the given strings in alphabetical order, case insensitive.

def sortme(arr)
  arr.sort_by(&:downcase)
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "B"]) == ["a", "B", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]

=begin

input: array of strings
output: array of sorted strings
data structure: string, array

rules:
  - sort the strings by alphabetical order, case-insensitive

algorithm:
  - sort array by downcased value
  - return sorted array (with unmutated case)

=end

# completed in 7m
