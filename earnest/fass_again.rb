# fass_again.rb

def fass(str)
  subs = []

  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      subs << str[idx1..idx2]
    end
  end

  p subs
end

fass('merlin')