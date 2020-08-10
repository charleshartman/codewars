# - take provided integer as counter
# - create new variable to hold output string
# - add alternating strings of 1 and 0 to string
# => if output is empty or preceding char is '0' then push '1'
# => else push '0'
# - until provided integer == output.chars

def stringy(input)
  output = ''
  while input > 0
    if output == '' || output[-1] == '0'
      output << '1'
    else
      output << '0'
    end
    input -= 1
  end
  p output
end

# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.
