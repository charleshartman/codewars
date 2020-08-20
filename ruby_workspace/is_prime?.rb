# is_prime?.rb

def is_prime?(int)
  (2...int).each do |num|
    return false if int % num == 0
  end
  true
end

p is_prime?(5) == true
p is_prime?(8) == false
p is_prime?(11) == true
p is_prime?(17) == true
p is_prime?(24) == false
p is_prime?(151) == true
p is_prime?(769) == true
p is_prime?(990) == false
