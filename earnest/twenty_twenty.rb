# twenty_twenty.rb

def the_year_twenty_twenty
  puts "Do you believe in the apocalypse, yet?"
  answer = gets.chomp
  the_year_twenty_twenty if answer.downcase == 'no'
  true
end

the_year_twenty_twenty
