# kebabize.rb
# 6 kyu

require 'pry'

# def kebabize_orig(str)
#   result = ''
#   str.each_char do |char|
#     if char.match?(/[A-Z]/)
#       result << '-' + char.downcase
#     elsif char.match?(/[a-z]/)
#       result << char
#     else
#       next
#     end
#   end
#   result
# end

def kebabize(str)
  result = ''
  cleaned_str = str.delete('0-9')
  cleaned_str[0] = cleaned_str[0].downcase

  cleaned_str.each_char do |char| 
    if char.match?(/[a-z]/)
      result << char
    elsif char.match?(/[A-Z]/)
      result << '-' + char.downcase
    end
  end

  result
end

# Modify the kebabize function so that it converts a camel case string
# into a kebab case.

p kebabize('Xh6xmf') == 'xhxmf'
p kebabize('camelsHaveThreeHumps') == 'camels-have-three-humps'
p kebabize('camelsHave3Humps') == 'camels-have-humps'
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

# Notes: the returned string should only contain lowercase letters

=begin

input: string
output: string
data structure: string, array

rules:
  - insert a hyphen before every capital letter
  - downcase all capital letters
  - delete all non-alpha characters

algorithm:
  - initialize (result) string
  - iterate through given string
    - if char is capital - [match A-Z regex]
        - push '-' into (result) string
        - push downcased char into result string
    - if char is lowercase - [match a-z regex]
        - push char into (result) string
    - else 
        next
  return result string

=end

# completed in 20m, but another +25m for CW edge cases
# CW solution much better, I couldn't figure out this regex:
#
# def kebabize(str)
#   str.delete('^A-Za-z').split(/(?=[A-Z])/).join('-').downcase
# end 
