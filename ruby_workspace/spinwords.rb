def to_camel_case(str)
  str.split(/[_-]/).each_with_index { |word, index| word.capitalize! if index > 0}.join
end

p to_camel_case("the-stealth-warrior") == "theStealthWarrior"
p to_camel_case("The_Stealth_Warrior") == "TheStealthWarrior"