# alphabet_symmetry.rb
# 7 kyu

=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
=end

ALPHA = ('a'..'z').to_a

def solve(arr)
  result = []
  arr.each do |str|
    counter = 0
    str.downcase.chars.each_with_index do |char, idx|
      if idx == ALPHA.find_index(char)
        counter += 1
      end
    end
    result << counter
  end

  result
end  

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

=begin

problem:
  - for each string in an given array of strings determine how many letters occupy the same 
    position in the string that they occupy in the alphabet
  - return an array of integers corresponding to those values
  - there will be no whitespace and only upper and lower case letters
  
input: array of strings
output: array of integers
data structure: hash, array

algorithm:
  - initialize an array of 'a'-'z' (ALPHA)
  - initialize (result) array to []
  - iterate through each string in the given array
    - initialize (counter) to 0
    - iterate through the downcased characters within the string with index
      - if the char at index is equal to the corresponding (ALPHA) key's value
        then increment counter by one
      - push counter into (result) array
  - return (result)
        
=end