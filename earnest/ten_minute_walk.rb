# ten_minute_walk.rb
# 6 kyu

def is_valid_walk?(walk)
  return false if walk.length != 10
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') ? true : false
end

p is_valid_walk?(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk?(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk?(['w']) == false
p is_valid_walk?(['n','n','n','s','n','s','n','s','n','s']) == false
p is_valid_walk?(['n','s','e','w','n','s','e','w','n','s']) == true

=begin

rules:
- if given array (walk) length != 10 then return false
- the count of each element must be equal else return false

input: array
output: boolean true or false
data structure: array and booleans
algorithm:
  - if given array (walk) length != 10 then return false

  - if count of N and S are equal AND count of E and W are equal return true
  - else return false

=end

# completed in 30m