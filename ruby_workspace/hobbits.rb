# hobbits.rb

# You are a lonely hobbit, and you've been given a manifest of all the residents
# in this side of the country. The manifest is an array of hashes, that have the
# form: {name: 'string', race: 'string', home: 'string'}

# You want to find all of the other hobbits! Your task is to return an array 
# from a given manifest that contains all of the potential halflings in the
# list. From your experience you know that hobbits don't always follow the
# rules, and some may have entered their race under their home and vice versa.
# You also know that some hobbits will refer to themselves as halflings, and
# that popular homes for hobbits include the shire, south farthing, and hobbiton.

# TLDR; For a given array of hashes of the form {name: 'string', race: 'string',
# home: 'string'}, return an array of all the objects that have the words
# halfling, hobbit, shire, farthing, or hobbiton anywhere within the race or
# home field.

manifest = [
  {name:'Aragorn', race:'Human', home:'Kingdom of Men'},
  {name:'Bilbo', race:'Hobbit', home:'The Shire'},
  {name:'Tom Bombadil', race:nil, home:'halfling/bree'},
  {name:'Charles', race:'halfling/bree', home: nil}
]

# input: array made up of hashes
# output: array made up of hashes (new array)
# rules: values for :race or :home keys must include string
#        (include, not wholly match)
#        must deal with possible nil key values
#        once match is found append and more on, watch for duplicates (uniq)
# - algorithm:
# - initialize local variable referencing an empty array objecy
# - iterate through each record in manifest
#   - if one of collection of strings is found *within* the values of the race
#     or home keys
#     then << that record to the new array 
# - return new array

def find_hobbits_in(manifest)
  results = []
  lookup = %w(halfling hobbit shire farthing hobbiton)

  manifest.each do |record|
    lookup.each do |acceptable|
      if record[:race].to_s.downcase.include?(acceptable) \
      || record[:home].to_s.downcase.include?(acceptable)
        results << record
      end
    end
  end
  results.uniq
end

p find_hobbits_in(manifest)
