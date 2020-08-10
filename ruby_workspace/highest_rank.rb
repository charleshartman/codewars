# highest_rank.rb

def highest_rank(arr)
  occurrences = Hash.new(0)
  highest_rank = 0
  highest_key = 0

  arr.each do |num|
    occurrences[num] += 1
  end

  occurrences.each do |k, v|
    highest_key = k if v > highest_rank || v >= highest_rank && k > highest_key
    highest_rank = v if v > highest_rank
  end

  highest_key
end

p highest_rank([10, 12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) == 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) == 3

=begin
input: array of integers, some duplicates
output: integer that is highest count and highest value
data structure/algorithm:
  - iterate through array counting each element and pushing count
    new hash (occurrences)
  - find highest number of occurrences in occurrences hash and return
=end
