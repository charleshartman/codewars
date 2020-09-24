# sherlock_on_pockets.rb
# 6 kyu

# Sherlock has to find suspects on his latest case. He will use your method,
# dear Watson. Suspect in this case is a person which has something not allowed
# in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value
# is one or few things represented by an array of numbers (can be nil or empty
# array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

pockets2 = { julia: nil, meg: [] }

# Write method which helps Sherlock to find suspects. If no suspect is found
# or there are no pockets (pockets == nil), the method should return nil.

def find_suspects(pockets, permitted)
  suspects = []

  pockets.each do |person, contents|
    next if contents == [] || contents == nil
    contents.each do |item|
      if !permitted.include?(item)
        suspects << person
      end
    end
  end
  return nil if suspects.empty?
  suspects.uniq
end

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
p find_suspects(pockets2, [1, 6]) == nil

=begin

<-PEDAC->
problem:
  - return an array of keys from the given hash where the values include 
    anything other of the given permitted items
  - return nil if no suspects found or no pockets

logic : 
  return key if pockets[:key] includes something other than items in given
  permitted array

input: hash
output: array or nil
data structure: hash, array

algorithm:
  - initialize (suspects) array to []
  - iterate through pockets
    - go to next if pockets (contents) is empty or nil
    - iterate through value subarray (contents)
      - if any values in contents are NOT included in given array
        - push key to (suspects)
  - return nil if (suspects) is empty
    - this might be one guard clause or two... return or reassignment
  - return (suspects)

=end
