# vowels.rb

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = 'aeiou'

hsh.each do |_, values|
  values.each do |value|
    value.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
