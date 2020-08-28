# is_int_array.rb

def is_int_array(arr)
  # return false if arr.nil? || arr == ''
  # return true if arr.empty?

  arr.is_a?(Array) &&
  arr.all? { |ele| ele.class == Integer || ele.class == Float && ele.round == ele }
end

p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false

=begin

input: array
output: boolean true or false
data structure: integers, array, floats

rules:
  - array of all integers or whole number floats return true 
  - array empty return true
  - everything else return false

algorithm:
  - guards:
    - return false if arr.nil? 
    - return true if array empty
  - iterate through array with all? ... check condition:
    - element class is Integer or element.round equals element => true
    - else return false

=end

# completed in 20m
