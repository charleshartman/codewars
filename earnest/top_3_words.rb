# top_3_words.rb
# 4 kyu

# Write a function that, given a string of text (possibly with punctuation and
# line-breaks), returns an array of the top-3 most occurring words, in 
# descending order of the number of occurrences.

# Assumptions:

# A word is a string of letters (A to Z) optionally containing one or more
# apostrophes (') in ASCII. (No need to handle fancy punctuation.)
# Matches should be case-insensitive, and the words in the result should be
# lowercased. 
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or
# top-1 words should be returned, or an empty array if a text contains no words.

def top_3_words(text)
  return [] if !text.match?(/[a-zA-Z]/)
  cleaned = text.downcase.gsub(/\/|\.|\?|\"|\,|\'{2,}|\:|\-/, '')
  words = cleaned.split
  words.uniq.max_by(3) { |word| words.count(word) }
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

=begin

<-PEDAC->
problem:
  - return the three words with the most occurences in the given string
  - ignore special characters with the exception of (')
  - return empty array if text includes no words
  - return top 1 or top 2 if only one or two words in text
  - case insensitive, count and return downcased

input: string
output: array
data structure: string, array 

algorithm:
  - initialize variable (cleaned) and assign to it the value of:
    - delete all non-alpha chars from string except single apostrophe
    - downcase string
  - split string to (words) array
  - iterate through unique elements in (words) and count occurences
  - return the 3 (or less) greatest by count [max_by]

=end
