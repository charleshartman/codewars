# multiplication_table.rb
# 6 kyu

# Your task, is to create NxN multiplication table, of size provided
# in parameter.

# For example, when given size is 3:

# 1 2 3
# 2 4 6
# 3 6 9

# For given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]

def multiplication_table(size)
  table = []
  1.upto(size) do |multiple|
    row = []
    number = multiple
    size.times do
      row << number
      number += multiple
    end
    table << row
  end
#  table.each { |row| p row }
  table
end

p multiplication_table(3) == [[1,2,3],[2,4,6],[3,6,9]]
p multiplication_table(9) == [[1, 2, 3, 4, 5, 6, 7, 8, 9],
                             [2, 4, 6, 8, 10, 12, 14, 16, 18],
                             [3, 6, 9, 12, 15, 18, 21, 24, 27],
                             [4, 8, 12, 16, 20, 24, 28, 32, 36],
                             [5, 10, 15, 20, 25, 30, 35, 40, 45],
                             [6, 12, 18, 24, 30, 36, 42, 48, 54],
                             [7, 14, 21, 28, 35, 42, 49, 56, 63],
                             [8, 16, 24, 32, 40, 48, 56, 64, 72],
                             [9, 18, 27, 36, 45, 54, 63, 72, 81]]

=begin

problem:
  - create an NxN multiplication table where the given integer is the width
    and heighth of the table
  - the return value should be in the form of a nested array with each sub-
    array representing a row in the table

input: input
output: array of sub-array elements (one level deep)
data structure: integer, array

algorithm:
  - initialize new empty array (table)
  - for each number from 1 to the given (size)
    - initialize new array (row)
    - initialize variable to hold (number) at the value of (multiple)
    - we need to build an array that starts from that (number)
    - and increments (number) by (multiple)
    - and do it (size) number of times
    - we then push that array into (table)
  - return table

=end

# completed in 35 mins
