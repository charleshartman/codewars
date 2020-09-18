# halvsies.rb - Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half
# of the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half
# Array.

=begin
def halvsies(arr)
  result = []
  half = arr.length / 2
  if arr.length.odd?
    result << arr[0..half]
    result << arr[(half + 1)..-1]
  else
    result << arr[0..(half - 1)]
    result << arr[half..-1]
  end
  result
end
=end

def halvsies(arr)
  result = []
  arr.length.odd? ? half = (arr.length / 2) : half = (arr.length / 2) - 1
  
  result << arr[0..half]
  result << arr[(half + 1)..-1]
  
  p result
end

# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

=begin

<-PEDAC->
problem:
  - split the given array into two equal size subarrays at midpoint unless array
    length is odd, in which case the first subarray should have +1 element

input: array
output: array with two sub arrays
data structure: array

algorithm:
  - initialize (result) array
  - if given array length is odd, then push arr.size / 2 + 1 elements into
    result as subarray at index 0, and remaining elements into subarray at
    index 1
      - odd logic: arr.length / 2 gives integer, first half would be 0..int
        second half would be int + 1..-1
  - else push arr.size / 2 elements to 0 and to 1 
      - even logic: arr.length / 2 gives integer, first half would be 0..int - 1
        second half would be int..-1
  - return (result)

=end
