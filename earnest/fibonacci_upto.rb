# fibonacci_upto.rb

# generate an array of all fibonacci numbers between 1 and the given number.

def fibonacci_upto(num)
  fibonacci = [1, 1]
  fibonacci << fibonacci[-2..-1].sum while fibonacci.last <= num 
  fibonacci.pop if fibonacci.last > num
  fibonacci
end

p fibonacci_upto(100000)
