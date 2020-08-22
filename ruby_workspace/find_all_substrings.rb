# find_all_substrings.rb

def find_all_substrings(str)
  subs = []
  str_len = str.length
  idx = 0
  until subs.last == str[-1] do
    
    counter = 0

    loop do
      subs << str[idx..(idx + counter)]
      counter += 1
      break if counter == str_len
    end

    str_len -= 1
    idx += 1
    
  end

  subs
end

p find_all_substrings('zzbaabcd')

# input: string
# output: array of substrings
# data structure: string, array
# algorithm:
#   - initialize new array (subs)]
#   - initialize variable (counter) for iteration through index
#   - initialize variable (str_len) to hold string length
#   - iterate through str by index, pushing each substring into (subs) array
#   - return array