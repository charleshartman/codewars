# fass.rb

def fass(str)
  subs = []

  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each { |idx2| subs << str[idx1..idx2] }
  end

  subs
end

def find_palindromes(str)
  pals = []

  fass(str).each do |sub| 
    pals << sub if sub.downcase == sub.downcase.reverse && sub.length > 1
  end

  pals
end

p find_palindromes('charles')
p find_palindromes('Hannah')

