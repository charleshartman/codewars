# wave.rb

def wave(str)
  result = []
  counter = 0
  new = str.chars
  p new

end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") ==["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

# input: string
# output: array
# data structure/algorithm:
#   - initialize new array (result)
#   - initialize counter (index)
#   - iterate through string, upcase each successive character by index and push
#     return value into result array
#   - end when counter is equal to one less than string length
#   - return array (result)

# edge cases/other considerations: can you upcase ' '?, test in irb... yes