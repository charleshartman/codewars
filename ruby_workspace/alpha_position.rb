# alpha_position.rb

LETTERS = ('a'..'z').each_with_object([]) { |let, arr| arr << let }
NUMBERS = (1..26).each_with_object([]) { |num, arr| arr << num }

p LETTERS
p NUMBERS
