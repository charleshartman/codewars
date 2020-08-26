# non_even_substrings.rb

def find_all_substrings(str)
  subs = []

  0.upto(str.length - 1).each do |idx1|
    idx1.upto(str.length - 1).each do |idx2|
      subs << str[idx1..idx2]
    end
  end

  subs
end

def solve(str) 
  find_all_substrings(str).select { |sub| sub.to_i.odd? }.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
