# contains_sub.rb

# Given two arrays of strings, arr1 and arr2, return a sorted array
# in alphabetical order of the strings within arr1 which are substrings
# of the strings within arr2.

# There should be no duplicates in returned array.
# Do not mutate the inputs.

=begin
input: two arrays of strings
output: array of strings from arr1 sorted in alphabetical order
data structure: array, string 

rules:
  - if substring in arr1 is present in any string in arr2 add to result
  - do not include duplicates in final result
  - do sort result array
  - do not mutate given arrays
  
algorithm:
  - initialize variable (result) and assign empty array to it
  - iterate through (arr1) for each substring in arr1
    - iterate through (arr2) and see if substring from arr1 is present 
      in any of the elements in arr2
    - if present push substring from arr1 into (results) array
  
  - remove duplicates and sort (result) array
  - return result

=end

def contains_sub(arr1, arr2)
  result = []
  arr1.each do |sub|
    arr2.each do |string|
      result << sub if string.include?(sub)
    end
  end
  
  result.uniq.sort
end

# Examples/Tests
arr1 = ["arp", "live", "strong"]
arr2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p contains_sub(arr1, arr2) == ["arp", "live", "strong"]

arr1 = ["tarp", "mice", "bull"]
arr2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p contains_sub(arr1, arr2) == []

arr1 = ['house', 'boat', 'car', 'plane']
arr2 = ['birdhouse', 'town', 'ace', 'racecar']
p contains_sub(arr1, arr2) == ['car', 'house']

=begin

def contains_sub(arr1, arr2)
  result = arr1.select { |substring| arr2.any? { |word| word.include?(substring) } }
  result.uniq.sort
end

=end
