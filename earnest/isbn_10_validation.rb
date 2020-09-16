# isbn_10_validation.rb
# 6 kyu

# ISBN-10 identifiers are ten digits. The first nine digits are on the
# range 0 to 9. The last digit can be either on the range 0 to 9 or the
# letter 'X' used to indicate a value of 10.

# For an ISBN-10 to be valid, the sum of the digits multiplied by their position
# has to equal zero modulo 11. For example, the ISBN-10: 1112223339 is
# valid because:

# (((1*1)+(1*2)+(1*3)+(2*4)+(2*5)+(2*6)+(3*7)+(3*8)+(3*9)+(9*10)) % 11) == 0

def validISBN10(str)
  digits = str.chars
  digits[9] = '10' if digits.length == 10 && digits[9] == 'X'

  return false if digits.length != 10 || digits.any? { |dig| dig.match?(/[A-Z]/) }

  counter = 1
  digits.map!(&:to_i).each_index do |idx|
    digits[idx] *= counter
    counter += 1
  end  
  
  digits.sum % 11 == 0
end

p validISBN10('1112223339') ==  true
p validISBN10('048665088X') ==  true
p validISBN10('1293000000') ==  true
p validISBN10('1234554321') ==  true
p validISBN10('1234512345') ==  false
p validISBN10('1293') ==  false
p validISBN10('X123456788') ==  false
p validISBN10('ABCDEFGHIJ') ==  false
p validISBN10('XXXXXXXXXX') ==  false

=begin

problem:
  - determine if given string is a valid ISBN-10 number and return true or
    false
  - multiply each digit by it's index position (starting at 1) and sum, then
    modulo 11 must each 0 for valid number
  - x is 10
  - anything other than 0-9 or X is invalid

input: string
output: boolean true or false
data structure: string, integer, boolean

algorithm:
  - convert string to array (digits)
  - if digits is 10 elements long and digits[9] == "X" then digits[9] = '10'
  - guard
    - if digits.length does not equal 10 or 
      if digits contains anything other than 0-10
      - return false
  - transform digits to integers
  - initialize counter to 1
  - initialize (result) and 
  - iterate over (digits) multiplying each element by counter
    - add 1 to counter each iteration
  - sum results and % 11 == 0

=end

# completed in 60m
