# alpha_position.rb

def alphabet_position(text)
  dict = {}
  num = 0
  ('a'..'z').each { |letter| dict[letter] = (num += 1) }
  result = text.downcase.chars.keep_if { |char| char =~ /[a-z]/ }
  result = result.map { |letter| letter = dict[letter] }.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") \
  == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""


# input: string
# output: string on numbers, space delimited
# data structure: hash, keys are letters, values numbers, array (result)
# algorithm:
#   - create hash dictionary (dict) of letter => number pairs
#   - convert string to lowercase (result)
#   - convert string to array (result)
#   - remove non-letter chars from array
#   - iterate through array, convert using dictionary 
#   - join result 
#   - return result string