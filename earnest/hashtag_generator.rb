# hashtag_generator.rb
# 5 kyu

def generate_hashtag(str)
  words = str.split
  return false if words.empty?

  hashtag = ((words.map(&:capitalize)).unshift('#')).join
  return false if hashtag.length > 140

  hashtag
end

p generate_hashtag("") == false
p generate_hashtag(" " * 200) == false
p generate_hashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generate_hashtag("Codewars") == "#Codewars"
p generate_hashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generate_hashtag("Codewars is nice") == "#CodewarsIsNice"
p generate_hashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generate_hashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooo" \
 "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo" \
 "oooooooooooooooooooooooooooong Cat") == false
p generate_hashtag("a" * 139) == "#A" + "a" * 138

=begin

input: string
output: string or false
rules:
  - return value must start with #
  - remove all whitespace
  - all worlds must have first char capitalized
  - if final result is longer that 140 chars then return false
  - if final result is empty string then return false

algorithm:
  - split string into array (words) and remove whitespace
  - if array is empty return false

  - iterate through array and capitalize each element
  - prepend '#' to (words) array
  - join array and assign to variable (hashtag)
  - if length of string is greater than 140 return false

  - return (hashtag)

=end

# completed in 25m
