# return_substring_instance_count.rb
# 7 kyu

# Complete the solution so that it returns the number of times the search_text
# is found within the full_text.

# Usage example:
# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1

def solution(full_text, search_text)
  full_text.scan(search_text).length
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
p solution('aaabbbcccc', 'bbb') == 1
p solution('ababab', 'ab') == 3
p solution('abcde', 'abcde') == 1

=begin

<-PEDAC->
problem:
  - return the number of times the search_text occurs in the full_text.

input: string
output: integer
data structure: string, integer

algorithm:
  - count the number of times search_text appears in full_text and return count
  - use scan and length
=end
