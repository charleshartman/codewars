# plus_one_array.rb

def up_array(arr)
  return nil if arr.any? { |num| num > 9 || num < 0 }
  return nil if arr.empty?
  int = arr.each { |num| num.to_s }.join
  int = (int.to_i + 1).digits.reverse
end

p up_array([2,3,9]) == [2,4,0]
p up_array([4,3,2,5]) == [4,3,2,6]
p up_array([1,-9]) == nil

# input: array
# output: array
# data_structure: arrays and integer values
# algorithm:
#   - initialize variable to hold integer value: int
#   - initialize result array: result
#   - convert the array to an integer
#     - convert each element to string, join string
#     - convert to integer
#   - test for successful conversion
#   - if not convertible return nil
#   - otherwise increment integer + 1
#   - convert the integer to an array of digits
#   - return array
