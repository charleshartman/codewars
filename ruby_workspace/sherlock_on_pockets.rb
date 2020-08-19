# sherlock_on_pockets.rb

# Sherlock has to find suspects on his latest case. He will use your method,
# dear Watson. Suspect in this case is a person which has something not allowed
# in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value is
# one or few things represented by an array of numbers (can be nil or empty
# array if empty), example:

pockets = {
  bob: [1],
  tom: [2, 5],
  jane: [7]
}

# Write method which helps Sherlock to find suspects. If no suspect is found or
# there are no pockets (pockets == nil), the method should return nil.

# return array of suspects with illegal items in their pockets

# return keys for value elements that are not in the pockets array
# return nil if empty pockets or no disallowed items in pockets aka innocents

def find_suspects(pockets, allowed_items)
  suspect_list = []
  
  return nil if pockets.each_value.all? { |val| val == [] || val == nil }
  
  pockets.each_pair do |key, value|
    value.each do |int|
      if allowed_items.include?(int) then next
      else suspect_list << key
      end
    end
  end

  return nil if suspect_list == []
  suspect_list.uniq
end

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]

# input: array of integer values
# output: return an array of key values that match the condition specified
# data structure: arrays, hash dictionary reference, match integer values
# algorithm:
#   - initialize new array for result (suspect_list)
#   -iterate through pockets hash looking for match in supplied array
#    - if match is found, add key value to suspect_list array
#   - if suspect_list array is empty after all iterations then array = nil
#   - return suspect_list array
