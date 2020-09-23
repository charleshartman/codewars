# equal_sides.rb

# You are going to be given an array of integers. Your job is to take that
# array and find an index N where the sum of the integers to the left of N is
# equal to the sum of the integers to the right of N. If there is no index
# that would make this happen, return -1.

# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array
# can be any integer positive or negative.

# Output:
# The lowest index N where the side to the left of N is equal to the side
# to the right of N. If you do not find an index that fits these rules, then
# you will return -1.

# Note:
# If you are given an array with multiple answers, return the lowest correct
# index.

def find_even_index(arr)
  #your code here
end

find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
find_even_index([1, 100, 50, -51, 1, 1]) == 1
find_even_index([1, 2, 3, 4, 5, 6]) == -1
find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
find_even_index(Array(1..100)) == -1
find_even_index([0, 0, 0, 0, 0]) == 0
find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
find_even_index(Array(-100..-1)) == -1

=begin

<-PEDAC->
problem:
  - find the index number of an array

input:
output:
data structure: 

algorithm:
  - 

=end
