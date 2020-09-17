# lettercase_counter.rb - Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

def letter_case_count(str)
  counter = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    case
    when char.match?(/[A-Z]/) then counter[:uppercase] += 1
    when char.match?(/[a-z]/) then counter[:lowercase] += 1
    else                           counter[:neither] += 1
    end
  end
  p counter
end

# Examples:
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin

<-PEDAC->
problem:
  - given a string, return a hash with three entries that hold the count for
    lowercase, uppercase, and neither character types
  - spaces count as other chars
  - keys are symbols, values are integers
  - order is lower, upper, neither

input: string
output: hash
data structure: string, hash 

algorithm:
  - initialize new hash (counter) with default value of 0
  - iterate through string
  - whichever category char matches, increment by one
  - return (counter)

=end
