# simple_number_sequence.rb

# In this Kata, you will be given a string of numbers in sequence and your task
# will be to return the missing number. If there is no number missing or there
# is an error in the sequence, return -1.

# For example:
# 
# missing("123567") = 4 
# missing("899091939495") = 92
# missing("9899101102") = 100
# missing("599600601602") = -1 -- no number missing
# missing("8990919395") = -1 -- error in sequence. Both 92 and 94 missing.

# The sequence will always be in ascending order.

def missing(str)
  # code
end

p missing("123567") == 4
p missing("899091939495") == 92
p missing("9899101102") == 100
p missing("599600601602") == -1
p missing("8990919395") == -1
p missing("998999100010011003") == 1002
p missing("99991000110002") == 10000
p missing("979899100101102") == -1
p missing("900001900002900004900005900006") == 900003

=begin



=end