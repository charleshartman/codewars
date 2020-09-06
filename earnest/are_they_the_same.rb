# are_they_the_same.rb
# 6 kyu

=begin

Given two arrays a and b, write a function comp(a, b) that checks whether
the two arrays have the "same" elements, with the same multiplicities. 
"Same" means, here, that the elements in b are the elements in a squared,
regardless of the order.

Examples:
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is the
square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square
of 161, and so on. It gets obvious if we write b's elements in terms of squares:
a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Notes:
a or b might be [] 
a or b might be nil
If a or b are nil, the problem doesn't make sense so return false.

=end

def comp(arr1, arr2)
  return false if arr1.nil? || arr2.nil?
  arr1.all? { |num| arr2.include?(num**2) }
end



p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        []) == false
p comp( nil, 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == false

#p comp( [121, 144, 19, 161, 19, 144, 19, 11],
#        [132, 14641, 20736, 361, 25921, 361, 20736, 361] ) == false

# p comp( [121, 144, 19, 161, 19, 144, 19, 11],
#         [121, 14641, 20736, 36100, 25921, 361, 20736, 361] ) == false

# p comp( [2, 2, 3], [4, 9, 9] ) == false

p comp( [], [] ) == true

=begin

problem:
  - given two arrays, are the squared values of ALL of the elements in arr1
    present in arr2
  - return should be true or false
  - if either given array is nil, then return should be false
  
input: two arrays with the same number of elements
output: boolean true or false
data structure: array

algorithm:
  - guard: return false if either array is nil
  - iterate through arr1
    - determine if ALL elements in arr1 when squared, are included in arr2
  - return true or false

algorithm w/edge:
  - guard: return false if either array is nil
  - iterate through arr1
    - if element squared in arr1 is present in arr2, delete element
    - delete matching element(s) in arr2 if squared element from arr1 is present in arr2
  - return true or false

=end