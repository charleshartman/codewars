# find_the_missing_letter.rb
# 6 kyu

# Write a method that takes an array of consecutive (increasing) letters as input
# and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter
# be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:
# ["a","b","c","d","f"] -> "e"
# ["O","Q","R","S"] -> "P"

# (Use the English alphabet with 26 letters!)

def find_missing_letter(arr)
  arr.each_index do |idx|
    return (arr[idx].ord + 1).chr if arr[idx].ord != (arr[idx + 1].ord) - 1
  end
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

=begin

problem: 
  - find the missing letter in array. letters are in alpha order, either
    all caps or all lowercase
  - exactly one char is missing
  - at least two chars in given array

input: array of strings
output: string
data structure: array, string

algorithm:
  - iterate over given array
    - find ordinal of first element
    - if next element ordinal is not equal to previous ordinal + 1
      - return ordinal + 1

=end
