# title_case.rb
# 6 kyu

def title_case(title, exceptions = '')
  return '' if title == ''

  t_words = title.downcase.split
  except = exceptions.downcase.split

  result = t_words.map { |word| except.include?(word) ? word : word.capitalize }

  result[0] = result[0].capitalize
  result.join(' ')
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

=begin

input: title string and exceptions string
output: title string capitalized except exceptions lowercased
data structure: strings, array

rules:
  - capitalize each word in given string 
  - unless it is in exceptions list, in which case it should be downcased
  - unless it is first word in string then it should be capitalized

algorithm:
  - initialize array (t_words) and assign return of title downcase split
  - initialize array (except) and assign split downcased exceptions
  - iterate through t_words with map
    - if (except) array includes (word) then return word
    - else return (word) capitalized
  - capitalize first word in array (t_words[0])
  - join array and return

=end

# completed in 25m
