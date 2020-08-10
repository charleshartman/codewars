# bubble.rb

# Given a number, return the maximum number that can be formed from the digits
# of the number given.

# - break number into digits and put in an array (digits_array)
# - sort digits_array from largest to smallest
# - cmobine the sorted digits
# - return number

p max_number_2(213) == 321
p max_number_2(7389) == 9873
p max_number_2(63729) == 97632
p max_number_2(566797) == 977665
p max_number_2(1) == 1
p max_number_2(999_999) == 999_999
p max_number_2("123") == "Sorry, this function needs an Integer"
p max_number_2(123.4) == "Sorry, this function needs an Integer"