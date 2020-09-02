# longest_palindrome.rb
# 6 kyu

def longest_palindrome(str)
  return 0 if str.empty?

  str = str.downcase.gsub(/\W|_/, '')
  char_list = str.chars.uniq
  pal_value = 0

  char_list.each do |char|
    pal_value = pal_value + ((str.count(char) / 2) * 2 ) if str.count(char) > 1
  end

  pal_value < str.length ? pal_value += 1 : pal_value
end

# regex: /\W|_/
# non regex way to delete: str.delete('^A-Z0-9')

p longest_palindrome("A") == 1
p longest_palindrome("Hannah") == 6
p longest_palindrome("xyz__a_/b0110//a_zyx") == 13
p longest_palindrome("$aaabbbccddd_!jJpqlQx_.///yYabababhii_") == 25
p longest_palindrome("") == 0

=begin

input: string
output: integer value representing the longest palindrome that can be created
        using each char just once
data structure: string, array, possibly hash

problem: 
  - we need to know the number of characters within the string that occur more 
    than once...
    - if a character occurs more than once then it's (pal_value) is its 
      (count / 2) * 2
    - the (total_pal) would be (pal_value + 1) if (pal_value) < given string's 
      length, other (total_pal) == (pal_value)
    - guard clause for empty string or one char string?

algorithm:
  - guard: return 0 if given string is empty
  - downcase string and remove non-alphanumerics
  - initialize array (char_list) and assign to it given string's uniq chars 
  - initialize (pal_value) at 0
  - iterate through (char_list)
    - count the number of each element in SK appearing in given string
      - if count > 1
        - add (count / 2) * 2 to (pal_value)
  - if (pal_value) is less than the length of the string then (pal_value) += 1
  - return (pal_value)

=end

# completed in 60m
