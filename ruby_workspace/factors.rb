# factors.rb

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# if number is <= 0 exit gracefully
# else do math
# subtract one from divisor 
# repeat

# need loop conditioned on divisor not being zero

p factors(12)
p factors(0)
p factors(1000)
p factors(-77)
p factors(324)