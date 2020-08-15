# string_incrementer.rb

def increment_string(input)
  work = input.partition(/\d+/).delete_if { |el| el == '' }
  if work.length <= 1
    work << '1'
  elsif work[1][-2] == '0'
    work[1][-1] = (work[1][-1].to_i + 1).to_s
  else
    work[1] = ((work[1].to_i) + 1).to_s
  end
  work.join
end

p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"

# str.chars.last.to_i.to_s == str.chars.last

# input: string
# output: string
# data structure: strings, integers, array
# algorithm:
#   - convert input string to array (arr) by spliting string at first 0-9
#   - conditional:
#     - if no number element (arr.length == 1) then append element '1' to array
#     - else convert numerical element to integer and increment + 1
#     - then convert back to string and
#   - join and return array