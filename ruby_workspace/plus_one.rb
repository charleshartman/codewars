# plus_one.rb - Practice Problem 10 - v2

# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.

new = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |array|
  plus_one_hash = {}
  array.each do |key, value|
    plus_one_hash[key] = value + 1
  end
  plus_one_hash
end

p new