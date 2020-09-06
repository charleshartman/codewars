# swap_case_using_n.rb

# Your job is to change the given string s using a non-negative integer n.

# Each bit in n will specify whether or not to swap the case for each alphabetic
# character in s: if the bit is 1, swap the case; if its 0, leave it as is. When
# you finished with the last bit of n, start again with the first bit.

# You should skip the checking of bits when a non-alphabetic character is
# encountered, but they should be preserved in their original positions.

# Examples

# swap('Hello world!', 11)  -->  'heLLO wORLd!'
#...because 11 is 1011 in binary, so the 1st, 3rd, 4th, 5th, 7th, 8th and 9th
# alphabetical characters have to be swapped:

# H e l l o  w o r l d !
# 1 0 1 1 1  0 1 1 1 0
# ^   ^ ^ ^    ^ ^ ^

def spec_swap(str, bin)
  # code
end

# p spec_swap("Hello world!", 11) == "heLLO wORLd!"
p spec_swap("the quick broWn fox leapt over the fence", 9) \
  == "The QUicK BrowN foX LeaPT ovER thE FenCE"
# p spec_swap("eVerybody likes ice cReam", 85), "EVErYbODy LiKeS IcE creAM")
# p spec_swap("gOOd MOrniNg", 7864), "GooD MorNIng")
# p spec_swap("how are you today?", 12345), "HOw are yoU TOdaY?")
# p spec_swap("the lord of the rings", 0), "the lord of the rings")
# p spec_swap("", 11345), "")

# to get binary 11.to_s(2)