# triple_double.rb

# Write a function: triple_double(num1, num2)
# which takes numbers num1 and num2 and returns 1 if there is a straight
# triple of a number at any place in num1 and also a straight double of
# the same number in num2. If this isn't the case, return 0.

def triple_double(num1, num2)
  arr = (0..9).inject([]) { |arr, num| arr << num }
  arr.each do |n|
    if num1.to_s.match?(/[n{3}]/) && num2.to_s.match?(/[n{2}]/)
      puts "works"
    else
      puts "nope"
    end
  end

end

# Examples
p triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s
p triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
