# find_the_odd_int.rb

# Find the odd int
# Given an array, find the integer that appears an odd number of times.

def find_it(seq)
  occurrences = {}
  seq.each { |int| occurrences[int] = 0 }
  seq.each { |int| occurrences[int] += 1 }
  occurrences.select { |k,v| return k if v.odd? }
end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

=begin
input: array
output: integer
data_structure/algo:
  - create hash (occurrences) to store count of each integer
  - iterate through array, adding each element to the occurrences hash
  - iterate through the new occurrences hash and select the integer with
      the odd occurrence count
  - return that value
=end