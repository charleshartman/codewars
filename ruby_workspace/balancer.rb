# balancer.rb

def balancer(str)
  str.count('(') == str.count(')') ? true : false
end

p balancer("(9)") == true
p balancer("(876") == false
p balancer("((nested))") == true
p balancer("((nested))009p)") == false

# input: string
# output: boolean (true or false)
# data structure: strings
# algorithm:
#   - determine if count of left parenthasees and right parenthasees is equal
#     - use conditional based on `count` method
#   - return true or false
