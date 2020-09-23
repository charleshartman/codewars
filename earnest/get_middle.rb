# get_middle.rb

# Get The Middle Character

# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

def center_of(str)
  str.size.odd? ? str[str.size / 2] : str[(str.size / 2 - 1)..str.size / 2]
end


# Examples:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

=begin

<-PEDAC->
problem:
  - return the 1 middle character (if string is odd length) or 2 middle
    characters (if string is even length) from the given string
  - spaces are included

input: string
output: string
data structure: string, array 

algorithm:
  - determine if string is odd or even length
    - if odd, return character at length / 2
    - if even, return characters at length / 2 - 1..length / 2

=end
