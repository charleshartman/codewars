# daily_double.rb

# ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

def crunch(str)
  result = ''
  chars = str.chars
  chars.each_with_index do |char, idx|
    if char == chars[idx + 1]
      next
    else
      result << char
    end
  end

  result
end

# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin

<-PEDAC->
problem:
  - return a new string that eliminates consecutive duplicate chars

input: string
output: string
data structure: string, array 

algorithm:
  - initialize (result) at ''
  - convert str to array (chars)
  - iterate through (chars) with index
    - if char = chars[index + 1]
      - then proceed to next iteration
    - otherwise push char to (result)
  - return (result)

=end
