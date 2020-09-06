# bart_lisa_maggie.rb
# 6 kyu

# Given: an array containing hashes of names containing only A-Z, a-z, '-' and '.'.

# Return: a string formatted as a list of names separated by commas except for
# the last two names, which should be separated by an ampersand.

def list(arr)
  names = ''
  case arr.length
  when 0 then return ''
  when 1 then return arr[0][:name]
  when 2 then return "#{arr[0][:name]} & #{arr[1][:name]}"
  else
    arr[0..-3].each { |ele| names << "#{ele[:name]}, "}
    names << "#{arr[-2][:name]} & #{arr[-1][:name]}"
  end
  names
end

# Examples:
p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) == 'Bart, Lisa & Maggie'
p list([ {name: 'Bart'}, {name: 'Lisa'} ]) == 'Bart & Lisa'
p list([ {name: 'Bart'} ]) == 'Bart'
p list([]) == ''

=begin

problem:
  - take an array of hashes, where the value of each hash is a string
  - return a comma separated string of all names, with the last two being 
    separated by an '&' instead of comma. 

input: array of hashes
output: string
data structure: array, hash, string

algorithm:
  - initialize variable (names) with empty string as object
  - write case based on length of array
    - if 0 then ''
    - if 1 then name
    - if 2 then name & name
    - if >= 3 then iterate over array and build names string
      - from index 0..-2 push name + comma into names
      - push name[-2] & name[-1] into names        
  - return (names)

=end

# completed in 40m (syntax for lines 16-17 took a bit)

=begin CW solution is cool
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end
=end
