# who_likes_it.rb

# You probably know the "like" system from Facebook and other pages. People 
# can "like" blog posts, pictures or other items. We want to create the text
# that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input
# array, containing the names of people who like an item. It must return the 
# display text as shown in the examples:

def likes(names)
  #your code here
end

p likes([]) == "no one likes this"
p likes(["Peter"]) == "Peter likes this"
p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
p likes(["Max", "John", "Mark"]) == "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"

# For 4 or more names, the number in and 2 others simply increases.
=begin
input: array
output: string
data structure/algorithm:
=end
