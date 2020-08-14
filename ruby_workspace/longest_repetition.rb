# longest_repetition.rb

def longest_repetition(str)
  counter = {}
  ('a'..'z').each { |char| counter[char] = 0 }
  letters = str.chars.each { |let| counter[let] += 1 }
  p counter.max_by { |let, val| val }
end

p longest_repetition("aaaabb") == ['a', 4]
p longest_repetition("bbbaaabaaaa") == ['a', 4]
# p longest_repetition("cbdeuuu900") == ['u', 3]
# p longest_repetition("abbbbb") == ['b', 5]
# p longest_repetition("aabb") == ['a', 2]
# p longest_repetition("ba") == ['b', 1]
# p longest_repetition("") == ['', 0]
# p longest_repetition("aaabbcccddd") == ['a', 3]

# input: string
# output: array of single ['string', integer]
# data structure: array, hash as counter
# algorithm:
#   - initialize hash with a..z, value = 0 (counter)
#   - convert string to array (chars)
#   - iterate through array + 1 to appropiate key => value
#   - get key => value pair with highest value
#   - return result as array ['string', value]