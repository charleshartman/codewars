# simple_frequency_sort.rb
# 6 kyu

# In this Kata, you will sort elements in an array by decreasing frequency
# of elements. If two elements have the same frequency, sort them
# by increasing value.

# solve([2, 3, 5, 3, 7, 9, 5, 3, 7]) = [3, 3, 3, 5, 5, 7, 7, 2, 9]
# --we sort by highest frequency to lowest frequency. If two elements have same
# frequency, we sort by increasing value

def solve(arr)
  # code
end

p solve([2, 3, 5, 3, 7, 9, 5, 3, 7]) == [3, 3, 3, 5, 5, 7, 7, 2, 9]
p solve([1, 2, 3, 0, 5, 0, 1, 6, 8, 8, 6, 9, 1]) \
     == [1, 1, 1, 0, 0, 6, 6, 8, 8, 2, 3, 5, 9]
p solve([5, 9, 6, 9, 6, 5, 9, 9, 4, 4]) == [9, 9, 9, 9, 4, 4, 5, 5, 6, 6]
p solve([4, 4, 2, 5, 1, 1, 3, 3, 2, 8]) == [1, 1, 2, 2, 3, 3, 4, 4, 5, 8]
p solve([4, 9, 5, 0, 7, 3, 8, 4, 9, 0]) == [0, 0, 4, 4, 9, 9, 3, 5, 7, 8]

=begin

<-PEDAC->
problem:
  -

input:
output:
data structure:

algorithm:
  -

=end

# not quite:
# arr.sort_by { |ele| arr.count(ele) }.reverse
