def prompt(msg)
  puts "\e[34m#{msg}\e[0m"
end

def play_again?
  answer = ''  
  loop do
    prompt("Would you like to play another match? (y/n) ")
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
    puts "=> Invalid input, you must enter 'y' or 'n'.\n\n"
  end
  true if answer == 'y'
end

p play_again?