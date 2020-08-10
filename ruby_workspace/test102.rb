# test102.rb

require 'pry'

def prompt(msg)
  puts "\e[34m#{msg}\e[0m"
end

answer = nil

def user_hit_stay?(answer)
  loop do
    prompt("Would you like to (h)it or (s)tay?")
    answer = gets.chomp.downcase
    binding.pry
    break if answer == 's' || answer == 'h'
    puts "=> Invalid input, you must enter 'h' or 's'.\n\n"
  end
  answer
end

user_hit_stay?(answer)

p answer
