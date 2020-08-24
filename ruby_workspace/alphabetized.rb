# alphabetized.rb

def alphabetized_orig(str)
  (str.gsub(/\W+|_+/, "").chars).sort_by(&:downcase).join
end

def alphabetized_also(s)
  s.scan(/[a-z]/i).sort_by(&:downcase).join
end

def alphabetized_too(s)
  s.scan(/[a-zA-Z]/).sort_by { |letter| letter.downcase }.join
end

def alphabetized(str)
  str.scan(/[a-z]/i).sort(&:casecmp).join
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") \
#  == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("The Holy Bible") # == "BbeehHilloTy"
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy" 