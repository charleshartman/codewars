# get_char_count.rb
# 6 kyu

def get_char_count(str)
  arr = str.downcase.chars.select { |char| char.match?(/[a-z0-9]/) }
  results = arr.group_by { |char| arr.count(char) }.sort.reverse.to_h
  results = results.each_value { |value| value.sort!.uniq! }

  results
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

=begin

input: string
output: hash of keys representing occurrences of characters and values 
        representing those characters
rules: ignore spaces and special characters, count uppercase as lowercase
data structure: string, hash, array
algorithm:
  - downcase string and convert to array (arr)
  - delete whitespace and special chars from the array (arr)
  - group chars by character count into hash (results)
  - reverse sort that hash (results)
  - sort values within hash
  - remove duplicate entries from hash (results) values
  - return hash (results)

=end

# completed in 45m