# find_all_substrings_v2.rb

def find_all_substrings(str)
  subs = []
  
  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      subs << str[idx1..idx2]
    end
  end

  subs
end

p find_all_substrings('zzbaabcd')
p find_all_substrings('charles')
p find_all_substrings('racecar')
