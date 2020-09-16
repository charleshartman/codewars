# autocomplete_yay.rb
# 6 kyu

=begin

The autocomplete function will take in an input string and a dictionary array
and return the values from the dictionary that start with the input string.
If there are more than 5 matches, restrict your output to the first 5 results.
If there are no matches, return an empty array.

Example:

autocomplete('ai', ['airplane','airport','apple','ball']) = ['airplane','airport']

For this kata, the dictionary will always be a valid array of strings. Please
return all results in the order given in the dictionary, even if they're not
always alphabetical. The search should NOT be case sensitive, but the case of
the word should be preserved when it's returned.

For example, "Apple" and "airport" would both return for an input of 'a'. 
However, they should return as "Apple" and "airport" in their original cases.

Important note:

Any input that is NOT a letter should be treated as if it is not there. For
example, an input of "$%^" should be treated as "" and an input of "ab*&1cd"
should be treated as "abcd".

=end

def autocomplete(str, dictionary)
  result = []
  clean_str = str.gsub(/[^a-zA-Z]/, '')
  dictionary.each do |word|
    result << word if word.downcase.start_with?(clean_str)
  end
  result.first(5)
  # result.length <= 5 ? result : result[0..4]
end

dictionary = [ 'abnormal',
               'arm-wrestling',
               'absolute',
               'airplane',
               'airport',
               'amazing',
               'apple',
               'ball' ]

dictionary2 = [ 'Nopesville' ]

p autocomplete('ai', dictionary) == ['airplane','airport']
p autocomplete('a', dictionary) == ['abnormal','arm-wrestling','absolute','airplane','airport']
p autocomplete('n~!@\#$%^&*()_+1234567890ope', dictionary2) == ["Nopesville"]

=begin

problem:
  - given a dictionary of words and a string, return all words in which the
    given string appears
  - case-insensitive lookup but return original case
  - ignore special characters (but do not mutate the string)

input: string, array
output: array

algorithm:
  - initialize (result) array
  - strip input string of special chars assign to (clean_str)
  - iterate through dictionary array
    - find matches for downcased chars (regex)
      if match? is true add word to result array
  - if result is longer than 5 elements return (result) [0..4]
  - else return result

=end
