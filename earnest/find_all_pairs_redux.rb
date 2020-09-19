# find_all_pairs_redux.rb

=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)
=end

def pairs(arr)
  total_pairs = 0
  counter = arr.uniq
  
  counter.each do |num|
    if arr.count(num) >= 2
      total_pairs += arr.count(num) / 2
    end
  end
  
  total_pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

=begin

problem:
  - determine the number of 'pairs' in the given array
    - if more than 2 occurrences then + (number of occurrences / 2) number of pairs
  - if array is empty or contains no pairs return 0

input: array
output: integer
data structure: integer, array

algorithm:
  - initialize variable for result (total_pairs) to 0
  - initialize array (counter) and assign value of given array's uniq elements
  - iterate through given array and count each element
    - if element is >= 2 then add the result of dividing the count by two to (total_pairs)
  - return (total_pairs)
  
=end
