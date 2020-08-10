# snippet

def string_to_signed_integer(str)
  if str[0] == '+'
    str.slice!(0, 1)
    string_to_integer(str)
  elsif str[0] == '-'
    str.slice!(0, 1)
    string_to_integer(str) * -1
  else
    string_to_integer(str)
  end
end
