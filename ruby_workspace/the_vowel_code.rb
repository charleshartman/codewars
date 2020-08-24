# the_vowel_code.rb

# Step 1: Create a function called encode() to replace all the lowercase vowels
# in a given string with numbers according to the following pattern:

# a -> 1, e -> 2, i -> 3, o -> 4, u -> 5
# For example, encode("hello") would return "h2ll4". There is no need to worry
# about uppercase vowels in this kata.

# Step 2: Now create a function called decode() to turn the numbers back into
# vowels according to the same pattern shown above.

# For example, decode("h3 th2r2") would return "hi there".

# For the sake of simplicity, you can assume that any numbers passed into the
# function will correspond to vowels.

# def encode(str)
#   encoded = ''
#   str.each_char do |char|
#     case char
#     when 'a'
#       encoded << '1'
#     when 'e'
#       encoded << '2'
#     when 'i'
#       encoded << '3'
#     when 'o'
#       encoded << '4'
#     when 'u'
#       encoded << '5'
#     else
#       encoded << char
#     end
#   end
#   
#   encoded
# end
# 
# def decode(str)
#   decoded = ''
#   str.each_char do |char|
#     case char
#     when '1'
#       decoded << 'a'
#     when '2'
#       decoded << 'e'
#     when '3'
#       decoded << 'i'
#     when '4'
#       decoded << 'o'
#     when '5'
#       decoded << 'u'
#     else
#       decoded << char
#     end
#   end
#   
#   decoded
# end
def encode(s)
  s.tr("aeiou", "12345")
end

def decode(s)
  s.tr("12345", "aeiou")
end

p encode('hello') == 'h2ll4'
p encode('How are you today?') == 'H4w 1r2 y45 t4d1y?'
p encode('This is an encoding test.') == 'Th3s 3s 1n 2nc4d3ng t2st.'
p decode('h2ll4') == 'hello'

# input: string
# output: string
# data structure = strings (maybe array) and (maybe hash dictionary)
# rules:
#   - encode method should replace all vowels with corresponding numbers from
#     the ruleset
#   - decode method should replace all numbers with corresponding vowels from
#     the ruleset
#   - assume all numbers are within scope of ruleset (1-5)
#   - assume all vowels are lowercase
# 
# algorithm:
#   - initialize (vowels) hash dictionary
#   - define encode method
#     - iterate through hash (k, v)
#       - iterate through each char in string, replacing key matches with value
#     - return string
# 
#     - define decode method
#     - iterate through hash (k, v)
#       - iterate through each char in string, replacing value matches with key 
#     - return string