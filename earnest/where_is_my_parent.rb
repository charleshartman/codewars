# where_is_my_parent.rb
# 6 kyu

=begin

Mothers arranged a dance party for the children in school. At that party,
there are only mothers and their children. All are having great fun on the
dance floor when suddenly all the lights went out. It's a dark night and no
one can see each other. But you were flying nearby and you can see in the
dark and have ability to teleport people anywhere you want.

  - Uppercase letters stands for mothers, lowercase stand for their children,
    i.e. "A" mother's children are "aaaa".
  - Function input: String contains only letters, uppercase letters are unique.

Task:
Place all people in alphabetical order where Mothers are followed by their
children, i.e. "aAbaBb" => "AaaBbb".

=end

KEY = %w(A a B b C c D d E e F f G g H h I i J j K k L l M m N n O o P p Q q R
         r S s T t U u V v W w X x Y y Z z)

def find_children(str)
  KEY.each_with_object('') { |let, result| result << let * str.count(let) }
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""

=begin

problem:
  - sort given string in alpha order and by case, upcase then downcase for
    each letter
  - there is only one upcase of any letter

input: string
output: string
data structure: string, array

algorithm:
  - create (KEY) array of upcase and downcase alphabets by letter, upcase first
  - initialize (result) string to ''
  - iterate through KEY
    - count occurrences of each element
    - push that element into result occurences number of times
  - return result string 

=end

# completed in 20m

# from CW
# str.chars.sort_by { |char| [char.downcase, char] }.join

