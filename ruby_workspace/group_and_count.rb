# group_and_count.rb

# Your goal is to write the group_and_count method, which should receive an
# array as unique parameter and return a hash. Empty or nil input must return
# nil instead of a hash. This hash returned must contain as keys the unique
# values of the array, and as values the counting of each value.

# You may not use Array#count or Array#length

def group_and_count(input)
  # counts = Hash.new(0) # use with simple each
  return nil if input.nil? || input.empty?
  input.each_with_object(Hash.new(0)) { |int, hash| hash[int] += 1 }
  # counts # return hash for simple each
end

# Examples:
void = []
input = [1,1,2,2,2,3]
p group_and_count(input) == {1=>2, 2=>3, 3=>1}
p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
p group_and_count(void) == nil
p group_and_count(nil) == nil

# input: array of integers
# output: hash with integer keys (from array) and values == occurrences of
#           integer in array
# data structure/algorithm:
#   - create new hash (counts) with default values of 0
#   - if arr is empty or nil return nil
#   - iterate through array and add key/value or increment value for each integer
#   - return hash