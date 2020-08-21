# sum_prime_indexes.rb

require 'prime'

def total(arr)
  index_primes = []
  arr.each_index { |idx| index_primes << arr[idx] if idx.prime? }
  index_primes.sum
end

p total([]) == 0
p total([1,2,3,4]) == 7
p total([1,2,3,4,5,6]) == 13
p total([1,2,3,4,5,6,7,8]) == 21
p total([1,2,3,4,5,6,7,8,9,10,11]) == 21
p total([1,2,3,4,5,6,7,8,9,10,11,12,13]) == 33
p total([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]) == 47

# input: array, can be empty
# output: integer
# rules: 
#   - return a sum of all numbers represented by index positions
#     which are prime numbers
#   - if given array is empty, should return 0
# data structure: arrays, integers
# algorithm:
#   - initialize new array (index_primes) to hold matches to specified condition
#   - iterate through given array
#       - if index position is a prime number, append value at that position
#         to index_primes array
#       - otherwise go on to the next position
#   - sum the contents of the index_primes array