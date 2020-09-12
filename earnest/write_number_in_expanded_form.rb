# write_number_in_expanded_form.rb
# 6 kyu

# You will be given a number and you will need to return it as a string in
# Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

# Note: All numbers will be whole numbers greater than 0.
def expanded_form(int)
  result = []
  counter = int.digits.length
  int.digits.reverse.each do |num|
    result << "#{num}" + '0' * (counter - 1) if num > 0
    counter -= 1
  end

  result.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

=begin

problem:
  - given integer should be rendered as a string with each digit place expanded
    to its whole number, as per examples
  - all numbers will be greater than 0

input: integer
output: string
data structure: string, array, integer

algorithm:
  - break given integer apart into array of (digits)
  - assess length of array and assign to (counter)
  - initialize (result) array to []
  - loop through array
    - push each digit plus the appropriate number of 0's into new array (result)
  - join array with ' + ' and return that string

=end

# completed in 20m