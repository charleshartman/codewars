# b06.reversing_and_combining_text.rb
# 6 kyu

# Your task is to Reverse and Combine Words. It's not too difficult, but there
# are some things you have to consider...

=begin

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third
   with fourth and so on...(odd number of words => last one stays alone, but has
   to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result...

Some easy examples:

Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

=end

def reverse_and_combine_text(str)
  # code
end

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") ==
                           "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

=begin

problem: 
  - reverse each word in given string and combine with next word, keep doing 
    this until there is only one word without white space

input: string
output: string
data structure: string, array

algorithm:
  - loop through given string while str includes white space
    - slice string into 2 element subarrays (with odd number singly at end 
      if applicable)
    - iterate over each sub-array, reversing each element
    - then join the two elements

=end