# string_transformer.rb
# 6 kyu

# Given a string, return a new string that has transformed based on the input:

# Change case of every character, ie. lower case to upper case, upper case
# to lower case.

# Reverse the order of words from the input.
# Note: You will have to handle multiple spaces, and leading/trailing spaces.

# For example:
# "Example Input" ==> "iNPUT eXAMPLE"
# You may assume the input only contain English alphabet and spaces.

# SWITCH = (Array('a'..'z').zip('A'..'Z').to_h).merge(Array('A'..'Z').zip('a'..'z').to_h)

def string_transformer(str)
  # str.swapcase.split.reverse.join(' ')
end

p string_transformer('Example string') == 'STRING eXAMPLE'
p string_transformer('You Know When  THAT  Hotline Bling') == 'bLING hOTLINE  that  wHEN kNOW yOU'
p string_transformer(' A b C d E f G ') == ' g F e D c B a '

=begin

<-PEDAC->
problem:
  - convert all lowercase chars to uppercase and all uppercase to lowercase
  - retain all white space
  - reverse order of words within string

input: string
output: string
data structure: string, array, hash 

algorithm:
  - 

=end
