# fizzbuzz.rb

# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and
# 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  num1.upto(num2) do |num|
    case
    when num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    when num % 3 == 0
      puts 'Fizz'
    when num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end
end


# Example:
fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin

rules:
  - print all numbers between and including the two given numbers to the screen
  - except is number is divisible by 3 and 5, then print FizzBuzz
  - or if divisible by 5 print Buzz
  - or if divisible by 3 print Fizz

input: two integers
output: series of integers and/or strings printed to screen

data structure: strings, integers, conditionals

algorithm:
 - iterate from given num1 to given num2
  - apply conditionals stated in rules above

=end

# completed in 8m
