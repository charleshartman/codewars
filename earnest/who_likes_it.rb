# who_likes_it.rb
# 6 kyu

# You probably know the "like" system from Facebook and other pages. People can
# "like" blog posts, pictures or other items. We want to create the text that
# should be displayed next to such an item.

# Implement a function, likes, which must take in input array, containing the
# names of people who like an item. It must return the display text as shown
# in the examples.

# Note: For 4 or more names, the number in 'and 2' others simply increases.

def likes(arr)
  case arr.size
  when 0
    "no one likes this"
  when 1
    "#{arr[0]} likes this"
  when 2
    "#{arr[0]} and #{arr[1]} like this"
  when 3
    "#{arr[0]}, #{arr[1]} and #{arr[2]} like this"
  else
    "#{arr[0]}, #{arr[1]} and #{arr.size - 2} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'

=begin

problem/rules:
  - take an input array of strings and return a formatted string with up to
    three names, separated by commas and 'and' for the last element. So:
  - if there are three names, name, name and name + 'likes this'
  - if there are greater than three names we should return two names as well as
    - 'and x others' + 'likes this'
  - if two names, name and name + 'likes this'
  - if one name, name + 'likes this'
  - if no name, 'no one' + 'likes this'

input: array
output: string
data structure: array, strings

algorithm: 
  - return 'no one likes this' if given array is empty
  - if length of array is 1 then return interpolation with element one 
  - if length of array is 2 then element 1 and element 2
  - if length of array is 3 interpolate 3
  - if length of array is greater than 3 then interpolate 1 and 2 and 
    length of array minus two others

=end

# completed in 20m
