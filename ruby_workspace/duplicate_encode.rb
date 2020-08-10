def duplicate_encode(word)
  arr = word.downcase.chars
  new = ''
  arr.each do |letter|
    if arr.count(letter) > 1
      new << ')'
    else
      new << '('
    end
  end
  new
end

p duplicate_encode("din")     == "((("
p duplicate_encode("recede")  == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @")    == "))(("
