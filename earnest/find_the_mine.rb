# find_the_mine.rb
# 6 kyu

# You've just discovered a square (NxN) field and you notice a warning sign.
# The sign states that there's a single bomb in the 2D grid-like field
# in front of you.

# Write a function mineLocation/MineLocation that accepts a 2D array, and
# returns the location of the mine. The mine is represented as the integer 1
# in the 2D array. Areas in the 2D array that are not the mine will be
# represented as 0s.

# The location returned should be an array (Tuple<int, int> in C#) where the
# first element is the row index, and the second element is the column index
# of the bomb location (both should be 0 based). All 2D arrays passed into your
# function will be square (NxN), and there will only be one mine in the array.

def mine_location(field)
  result = []
  field.each_with_index do |sub, idx|
    result << idx if sub.include?(1)
      sub.each_with_index do |sub2, idx2|
        result << idx2 if sub2 == 1  
      end  
  end

result
end

# Examples:
p mine_location( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0] 
p mine_location( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1] 
p mine_location( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]

=begin

input: array of arrays
output: two element array, representing position of 1 within given array
rules:
  - there is only one mine (1) present
  - arrays with be square (for example 4 element array with have four sub-
    arrays of 4 elements)

algorithm:
  - iniitalize new array for (result)
  - iterate over outer array and find which sub-array contains the mine, 
    returning it's index
  - then iterate through that sub-array and find the index position within it
  - return result as two element array

=end

# completed in 25m

# from CW
def mineLocation field
  field.each_with_index {|x, i| return i, x.index(1) if x.include? 1}
end

