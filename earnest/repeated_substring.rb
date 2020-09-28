# repeated_substring.rb
# 6 kyu

# For a given nonempty string s find a minimum substring t and the maximum
# number k, such that the entire string s is equal to t repeated k times. 
# The input string consists of lowercase latin letters. Your function should
# return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

# Example #1:
# s = "ababab" => ["ab", 3]
# Example #2:
# s = "abcde" => ["abcde", 1]
# because for this string "abcde" the minimum substring t, such that s is t
# repeated k times, is itself.

=begin

def fass(str)
  subs = []

  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each do |idx2|
      subs << str[idx1..idx2]
    end
  end

  subs
end

def f(str)
  subs = fass(str).select { |sub| sub.length > 1 }
  #
  #
  #
end

=end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

=begin

<-PEDAC->
problem:
  - 

input:
output:
data structure: 

algorithm:
  - 

=end
