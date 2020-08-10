def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end

p get_sum(1, 0) == 1   # 1 + 0 = 1
p get_sum(1, 2) == 3   # 1 + 2 = 3
p get_sum(0, 1) == 1   # 0 + 1 = 1
p get_sum(1, 1) == 1   # 1 Since both are same
p get_sum(-1, 0) == -1 # -1 + 0 = -1
p get_sum(-1, 2) == 2  # -1 + 0 + 1 + 2 = 2