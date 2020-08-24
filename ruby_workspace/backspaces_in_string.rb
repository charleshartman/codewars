# backspaces_in_string.rb

def clean_string(str)
  arr = str.chars

  while arr.include?('#')
    if arr[0] == '#'
      arr.shift
      next
    end

    bs = arr.find_index('#')
    arr.slice!(bs - 1, 2)
  end

  arr.join
end

p clean_string('abc#d##c') == 'ac'
p clean_string('abc####d##c#') == ""
p clean_string('abjd####jfk#') == 'jf'
p clean_string('gfh#jds###d#dsd####dasdaskhj###dhkjs####df##s##d##') == 'gdasda'
p clean_string('831####jns###s#cas/*####-5##s##6+yqw87e##hfklsd-=-28##fds##') \
  == '6+yqw8hfklsd-=-f'
p clean_string('######831###dhkj####jd#dsfsdnjkf###d####dasns') == 'jdsfdasns'
