# which_are_in.rb
# 6 kyu

# Given two arrays of strings a1 and a2 return a sorted array r in 
# lexicographical order of the strings of a1 which are substrings
# of strings of a2.

# Beware: r must be without duplicates.
# Don't mutate the inputs.

def in_array_orig(arr1, arr2)
  result = []

  arr1.each do |sub|
    arr2.each { |string| result << sub if string.include?(sub) }
  end

  result.uniq.sort
end

# refactored with select, no need for uniq here
def in_array(arr1, arr2)
  arr1.select { |sub| arr2.any? { |str| str.include?(sub) } }.sort
end

# Examples/Tests
arr1 = ["arp", "live", "strong"]
arr2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(arr1, arr2) == ["arp", "live", "strong"]

arr1 = ["tarp", "mice", "bull"]
arr2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(arr1, arr2) == []

arr1 = ['house', 'boat', 'car', 'plane']
arr2 = ['birdhouse', 'town', 'ace', 'racecar']
p in_array(arr1, arr2) == ['car', 'house']

=begin

problem:
  - return a new array containing all the strings from arr1 that are substrings
    of strings in arr2
  - no duplicates in result array
  - result array should be sorted (alphabetical)

input: two arrays
output: array
data structure: array, string

algorithm:
  - create a new array for (result)
  - iterate through arr1 for sub
    - iterate through arr2 for string
      - if the string from arr1 is present within any string in arr2
        - then add it to the result array
  - remove duplicate strings from result array
  - sort result array in alphabetical order
  - return result

=end

# completed in 25m
