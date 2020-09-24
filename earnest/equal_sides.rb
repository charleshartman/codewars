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
  counter = 0
  while counter < arr.length
    left, right = [], []
    arr.each_index do |idx|
      left << arr[idx] if idx < counter
      right << arr[idx] if idx > counter
    end
    return counter if left.sum == right.sum
    counter += 1
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0, 0, 0, 0, 0]) == 0
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
p find_even_index(Array(-100..-1)) == -1

=begin

<-PEDAC->
problem:
  - find the index number of an array where the elements to the left of that
    element summed equal with elements to the right of that element summed
  - if this is not true of any index return -1

input: array
output: integer
data structure: array, integer 

algorithm:
  - initialize (counter) to 0
  - loop while (counter) is less than length of array
    - initialize to empty arrays for (left) and (right)
    - iterate through each index
      - if index is less than counter push to left
      - if index is greater than counter push to right
        - if sum of left is equal to sum of right return counter
      - increment (counter) by one
  - without explicit return above return -1

=end
