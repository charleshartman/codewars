# longest_palindrome.rb

def find_all_substrings(str)
  subs = []
  str_len = str.length
  idx = 0
  until subs.last == str[-1] do
    
    counter = 0

    loop do
      subs << str.slice(idx..(idx + counter))
      counter += 1
      break if counter == str_len
    end

    str_len -= 1
    idx += 1
    
  end

  subs
end

def find_palindromes(arr)
  palindromes = arr.select { |str| str.downcase == str.downcase.reverse }
end

def longest_palindrome(str)
  subs = find_all_substrings(str)
  palindromes = find_palindromes(subs)

  (palindromes.max_by { |str| str.length }).length
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('zzbaabcd') == 4
p longest_palindrome('baablkj123454321133d') == 9

# input: string
# output: return an integer (length of longest palindrome)
# rules:
#   - empty strings should return 0
#   - strings with no palindromes should return 0
#   - otherwise return the length of the longest palindrome substring 
# algorithm:
#
#   - define a method to get all substrings from a string and place them in an
#     array
#     - initialize array for result (subs)
#     - iterate through each string index from 0 to length of string
#       - iterate through string to get all substrings from that index to length
#         of string, pushing substrings into subs array
#       - break when index is length of original str - 1
#     - return aubs array
#
#     - define a method that checks all strings in an array for palindromes
#       - initialize (palindromes) array
#       - iterate through given array
#         - if string is equal to string reversed then append to palindromes array
#     - return palindromes array

#    - define main method
#      - initialize variable to hold result integer (longest_length)
#      - call find substrings method on string argument
#      - call find palindromes method on (subs) array
#      - iterate through palindromes array and return length of longest string
#    - return length of longest string 




