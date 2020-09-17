# workpad7.rb

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def swapcase(str)
  # str.chars.map { |char| char.match?(/[a-z]/) ? char.upcase : char.downcase }.join
  str.chars.map { |char| ('a'..'z').include?(char) ? char.upcase : char.downcase }.join

end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'