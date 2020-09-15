# string_to_integer.rb

=begin
problem:
  - convert given string to an integer without using String#to_i type method

input: string
output: integer

algorithm:
  - initialize result to 0
  - initialize multiplier to 1
  - initialize digits hash with 0-9 strings as keys and 0-9 ints as values
  - split string (arr)
  - iterate through (arr) in reverse adding matching value times 1x to (result)
    - result will equal (result) plus value times (multiplier)
    - increment (multiplier) by 10x
  - return (result)
=end

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)
  result = 0
  multiplier = 1
  str.chars.reverse_each do |digit|
    result += (DIGITS[digit] * multiplier)
    multiplier *= 10
  end

  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('90210') == 90210

=begin
  
problem:
  - extend the last problem to handle positive (may be denoted my leading +)
    or negative numbers
  - use previous method as part of solution

algorithm:
  - initialize (signed) to 0
  - if string begins with '-', strip string of '-' char and multiply
    return of string_to_integer method by -1
  - if string begins with '+', strip string of '+' and call string_to_integer
  - else call string_to_integer and assign to signed
  - return (signed)

def string_to_signed_integer(str)
  signed = 0
  if str[0] == '-'
    str.delete!('-')
    signed = string_to_integer(str) * -1
  elsif str[0] == '+'
    str.delete!('+')
    signed = string_to_integer(str)
  else    
    signed = string_to_integer(str)
  end

  signed
end

=end

def string_to_signed_integer(str)
  case str[0]
  when '-' then string_to_integer(str[1..-1]) * -1
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
