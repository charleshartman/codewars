# remove_one_char_palindrome.rb
# 6 kyu

# You will be given a string and you task is to check if it is possible to
# convert that string into a palindrome by removing a single character. If the
# string is already a palindrome, return "OK". If it is not, and we can convert
# it to a palindrome by removing one character, then return "remove one",
# otherwise return "not possible". The order of the characters should not be
# changed. 

def v1_found_pal?(arr)
  counter = 0

  while counter < arr.length
    left, right = [], []
    arr.each_index do |idx|
      left << arr[idx] if idx < counter
      right << arr[idx] if idx > counter
    end
    return true if (left + right) == (left + right).reverse
    counter += 1
  end

  false
end

def found_pal?(chars)
  chars.combination(chars.size - 1).to_a.any? { |sub| sub == sub.reverse }
end

def solve(str)
  return 'OK' if str == str.reverse
  found_pal?(str.chars) ? "remove one" : "not possible"
end

# p found_pal?("raydarm") == false
# p found_pal?('abbaa') == true

p solve("abba") == "OK"
p solve("abbaa") == "remove one"
p solve("abbaab") == "not possible"
p solve("madmam") == "remove one"
p solve("raydarm") == "not possible"
p solve("hannah") == "OK"

=begin

<-PEDAC->
problem:
  - determine if given string is a palindrome
  - or if by removing one character you can create a palindrome
  - or if it is not possible to make a palindrom 

input: string
output: string
data structure: string, array 

algorithm:
  - define method to test removal of each char in succession and if that
    results in palindrome
    - initialize (counter) to 0
    - convert string to chars and iterate
      - test if equal reversed if current char is deleted (delete_at)
      - use left/right modality, pushing chars to left and right from (counter)
      - if left + right == left.right reversed then true
      - else false
  - main method
    - guard: test given string and return OK if palindromic already
    - call helper method
      - if true, return 'remove one'
      - else return 'no possible'

=end

# completed in 30m
