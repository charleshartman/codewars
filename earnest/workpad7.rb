# workpad7.rb

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

###

def swapcase(str)
  # str.chars.map { |char| char.match?(/[a-z]/) ? char.upcase : char.downcase }.join
  str.chars.map { |char| ('a'..'z').include?(char) ? char.upcase : char.downcase }.join

end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

###

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

###

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |num1|
    arr2.each do |num2|
      result << num1 * num2
    end
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

###

def multiply_list(arr1, arr2)
  result = []
  0.upto(arr1.length - 1) { |idx| result << (arr1[idx] * arr2[idx]) }
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

###

def average(arr)
  arr.reduce(:+) / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

###

def sum(int)
  int.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

###

def calculate_bonus(amount, qualify)
  qualify == true ? amount / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

###
