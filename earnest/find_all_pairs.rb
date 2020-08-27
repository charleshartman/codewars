# find_all_pairs.rb 
# 7 kyu

def pairs(arr)
  total_pairs = 0
  return total_pairs if arr == []

  # (0..arr.max).each do |int|
  #   total_pairs += arr.count(int) / 2 if arr.count(int) >= 2
  # end

  # refactored better, more efficient 
  arr.uniq.each do |int|
    total_pairs += arr.count(int) / 2 if arr.count(int) >= 2
  end

  total_pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2  
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

# input: array
# output: integer
# rules: 
# => find all pairs of numbers in the given array
# => return 0 if no pairs or empty array
# algorithm:
# => initialize counter (total_pairs) to 0
# => iterate through the array from 0 to max value element in the array
# =>  - count occurrences of each number
# =>  - if the number of occurrences is >= 2 then divide occurrences by 2 and
# =>    add to total_pairs
# => return total_pairs

# completed in 25m