# does_my_list_include.rb - Does My List Include This?

# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in
# your solution.

def include?(arr, data)
  arr.each { |ele| return true if ele == data }
  false
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin

<-PEDAC->
problem:
  - determine if the second argument is present within the first argument
  - do not use Ruby's include? method
  - array may be empty or include nil 

input: array, integer or nil
output: boolean true or false
data structure: array, boolean

algorithm:
  - iterate through given array and check for equality between element and 
    second given argument
  - return true or false

=end
