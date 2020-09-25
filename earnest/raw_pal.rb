# raw_pal.rb

# test if given string is a palindrome without using built in reverse(!) method
# do not mutate the given string
# only [a-zA-Z] will be used
# determination of if string is a palindrome is case-insensitive

def rev_str_without(str)
  counter = str.length
  str = str.downcase
  reverse = ''
  while counter > 0
    reverse << str[counter - 1]
    counter -= 1
  end
  reverse
end

def raw_pal?(str)
  str.downcase == rev_str_without(str)
end

p rev_str_without('Charles') == 'selrahc'

p raw_pal?('Anna') == true
p raw_pal?('Heather') == false
p raw_pal?('abba') == true
p raw_pal?('racecar') == true

=begin

<-PEDAC->
problem:
  - determine if a given string is a palindrome without using built in reverse
  - case-insensitive
  - only letters will be used

input: string
output: true or false
data structure: string, array

algorithm:
  - define helper method (rev_str_without) to reverse string
    - initialize (counter) to str.length
    - initialize (reverse) to ''
    - reassign str to string downcased
    - loop while counter is greater than 0
        - push str[counter -1] into (reverse)
        - increment counter - 1
    - return (reverse)

  - define main method
    - is given downcased string equal to return of (rev_str_without) method?
    - return true or false

=end
