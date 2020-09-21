# useful_snippets_p1.rb

# efficient prime test without using prime gem
def is_prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)).none? { |x| num % x == 0 }
end

# generate a-z hash with 1-26 value
ALPHA = Array('a'..'z').zip(1..26).to_h

# find all substrings
def fass(str)
  subs = []

  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each { |idx2| subs << str[idx1..idx2] }
  end

  subs
end

# generate an array of all fibonacci numbers between 1 and the given number.
def fibonacci_upto(num)
  fibonacci = [1, 1]
  fibonacci << fibonacci[-2..-1].sum while fibonacci.last <= num 
  fibonacci.pop if fibonacci.last > num
  fibonacci
end
